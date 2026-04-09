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

-- Helper for code actions on save (like goimports or ts-organize-imports)
local function sync_code_action(bufnr, client, kind)
  local params = vim.lsp.util.make_range_params()
  params.context = { only = { kind } }
  local result = vim.lsp.buf_request_sync(bufnr, "textDocument/codeAction", params, 1000)
  for _, res in pairs(result or {}) do
    for _, action in pairs(res.result or {}) do
      if action.edit then
        vim.lsp.util.apply_workspace_edit(action.edit, client.offset_encoding)
      elseif action.command then
        vim.lsp.buf.execute_command(action.command)
      end
    end
  end
end

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("lsp_attach_config", { clear = true }),
  callback = function(args)
    local client_id = args.data.client_id
    if not client_id then return end

    local client = vim.lsp.get_client_by_id(client_id)
    local bufnr = args.buf

    if client and client:supports_method("textDocument/completion") then
      vim.lsp.completion.enable(true, client_id, bufnr, { autotrigger = true })
    end

    local opts = { buffer = bufnr, silent = true }
    vim.keymap.set('n', 'gD', ':FzfLua lsp_declarations<CR>', opts)
    vim.keymap.set('n', 'gi', ':FzfLua lsp_implementations<CR>', opts)
    vim.keymap.set('n', 'gr', ':FzfLua lsp_references<CR>', opts)
    vim.keymap.set('n', 'g0', ':FzfLua lsp_document_symbols<CR>', opts)
    vim.keymap.set('n', 'gW', ':FzfLua lsp_live_workspace_symbols<CR>', opts)
    vim.keymap.set('n', '<leader>cl', function() vim.lsp.codelens.run() end, opts)

    -- Format on save
    if client and client:supports_method("textDocument/formatting") then
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = bufnr,
        callback = function()
          -- 1. Standard LSP Format
          vim.lsp.buf.format({ bufnr = bufnr, async = false })

          -- 2. Language-specific "Fixups"
          local ft = vim.bo[bufnr].filetype
          if ft == "go" then
            sync_code_action(bufnr, client, "source.organizeImports")
          end
        end,
      })
    end
  end,
})
