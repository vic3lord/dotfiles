require('lazy_bootstrap')
require('options')
require('mapping')
require('treesitter')
require('lsp')

vim.cmd [[
	autocmd! User GoyoEnter Limelight
	autocmd! User GoyoLeave Limelight!
]]

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  command = "lua vim.lsp.buf.format()",
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
