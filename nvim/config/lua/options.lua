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
vim.opt.completeopt = {'menuone', 'noinsert', 'noselect'}
vim.opt.incsearch = true -- show search matches as you type
vim.opt.showmatch = true
vim.opt.hlsearch = true
vim.opt.smartcase = true -- ignore case if search pattern is all lowercase, case-sensitive otherwise
vim.opt.ignorecase = true
vim.opt.clipboard = vim.opt.clipboard + 'unnamedplus' -- add clipboard support

-- Enable spell check
vim.opt.spelllang = 'en_us'
vim.opt.spell = false

-- Change how diagnostics appear
vim.diagnostic.config({ virtual_text = true })
