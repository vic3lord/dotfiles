vim.pack.add({
  'https://github.com/neovim/nvim-lspconfig',
  'https://github.com/mason-org/mason.nvim',
})

require('mason').setup()

local servers = vim
  .iter(require("config.languages"))
  :map(function(lang) return lang.lsp end)
  :filter(function(lsp) return lsp end)
  :flatten()
  :totable()

for _, server in ipairs(servers) do
  vim.lsp.enable(server)
end

-- Enable autocomplete
vim.opt.completeopt = 'menu,menuone,noselect,popup'
vim.opt.autocomplete = true

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("lsp_completion", { clear = true }),
  callback = function(args)
    local client_id = args.data.client_id
    if not client_id then
      return
    end

    local client = vim.lsp.get_client_by_id(client_id)
    if client and client:supports_method("textDocument/completion") then
      -- Enable native LSP completion for this client + buffer
      vim.lsp.completion.enable(true, client_id, args.buf, {
        autotrigger = true,   -- auto-show menu as you type (recommended)
        -- You can also set { autotrigger = false } and trigger manually with <C-x><C-o>
      })
    end
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = {"*.go"},
  callback = function()
    -- Format the file
    vim.lsp.buf.format({
      async = false,
    })

    -- Organize imports
    local params = vim.lsp.util.make_range_params()
    params.context = { only = { "source.organizeImports" } }

    local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, 1000)
    if not result then return end

    for _, res in pairs(result) do
      for _, action in pairs(res.result or {}) do
        if action.edit then
          vim.lsp.util.apply_workspace_edit(action.edit, "utf-16")
        else
          vim.lsp.buf.execute_command(action.command)
        end
      end
    end
  end
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = {"*.tf"},
  callback = function()
    vim.lsp.buf.format()
  end
})

