require('bootstrap')
require('options')
require('keymaps')


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

vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = "*.html",
  command = "set filetype=html"
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = {"lua", "ruby", "yaml", "html", "json"},
  callback = function ()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.expandtab = true
    vim.opt_local.smartindent = true
  end
})
