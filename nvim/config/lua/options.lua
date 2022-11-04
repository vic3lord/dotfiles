local opt = vim.opt
opt.termguicolors = true
opt.background = 'dark'
opt.timeoutlen = 1000
opt.ttimeoutlen = 0
opt.number = true
opt.relativenumber = true
opt.numberwidth = 1
opt.modeline = true
opt.modelines = 5
opt.laststatus = 2
opt.undofile = true
opt.showcmd = false
opt.cursorline = true
opt.cursorcolumn = true
opt.autowrite = true
opt.shortmess = opt.shortmess + 'c'
opt.completeopt = {'menuone', 'noinsert', 'noselect'}
opt.incsearch = true -- show search matches as you type
opt.showmatch = true
opt.hlsearch = true
opt.smartcase = true -- ignore case if search pattern is all lowercase, case-sensitive otherwise
opt.ignorecase = true
opt.clipboard = opt.clipboard + 'unnamedplus' -- add clipboard support

-- Set colorscheme
vim.cmd.colorscheme('gruvbox')

-- Rust
vim.g.rustfmt_autosave = 1

-- Terraform
vim.g.terraform_fmt_on_save = 1

-- Limelight
vim.g.limelight_conceal_ctermfg = 'gray'
vim.g.limelight_conceal_ctermfg = 240

-- FZF
vim.g.fzf_layout = {
  window = {
    width = 1,
    height = 1
  }
}
