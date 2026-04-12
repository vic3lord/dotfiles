-- New UI opt-in
require('vim._core.ui2').enable({})

vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 0
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 1
vim.opt.modeline = true
vim.opt.modelines = 5
vim.opt.laststatus = 2
vim.opt.undofile = true
vim.opt.showcmd = false
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.autowrite = true
vim.opt.shortmess = vim.opt.shortmess + 'c'
vim.opt.incsearch = true -- show search matches as you type
vim.opt.showmatch = true
vim.opt.hlsearch = true

-- Ignore case-sensitive for search
vim.opt.ignorecase = true

-- Switch to case-sensitive when capital letter is used
vim.opt.smartcase = true

-- Add clipboard support
vim.opt.clipboard = 'unnamedplus'

-- Enable spell check
vim.opt.spelllang = 'en_us'
vim.opt.spell = false

-- Change how diagnostics appear
vim.diagnostic.config({ virtual_text = true })
