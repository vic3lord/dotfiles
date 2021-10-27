lua <<END
require('plugins')
require('options')
require('mapping')
require('lsp')
require('treesitter')
require('lualine').setup{}
END

" limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" Language specifics
autocmd FileType ruby setlocal shiftwidth=2 sts=2 expandtab smartindent
autocmd FileType yaml setlocal shiftwidth=2 sts=2 expandtab smartindent
autocmd FileType html setlocal shiftwidth=2 sts=2 expandtab smartindent
autocmd BufWritePre *.go lua vim.lsp.buf.formatting()
