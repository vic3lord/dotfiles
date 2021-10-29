require('plugins')
require('options')
require('mapping')
require('treesitter')
require('lsp')

vim.cmd [[
	autocmd! User GoyoEnter Limelight
	autocmd! User GoyoLeave Limelight!

	autocmd FileType ruby setlocal shiftwidth=2 sts=2 expandtab smartindent
	autocmd FileType yaml setlocal shiftwidth=2 sts=2 expandtab smartindent
	autocmd FileType html setlocal shiftwidth=2 sts=2 expandtab smartindent
	autocmd FileType lua setlocal shiftwidth=2 sts=2 expandtab smartindent
	autocmd BufWritePre *.go lua vim.lsp.buf.formatting()
]]
