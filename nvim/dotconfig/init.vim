lua <<END
vim.cmd('filetype off')

-- vim-plug
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.vim/plugged')

-- Themes
Plug 'morhetz/gruvbox'
Plug 'nvim-lualine/lualine.nvim'
Plug 'onsails/lspkind-nvim'
Plug 'kyazdani42/nvim-web-devicons'

-- Common stuff
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive' -- Git client
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-dadbod' -- Database client
Plug 'JoosepAlviste/nvim-ts-context-commentstring' -- update commentstring based on treesitter
Plug 'f-person/git-blame.nvim'
Plug 'vitapluvia/vim-gurl' -- Github URL to clipboard
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
Plug 'godlygeek/tabular'

-- Search and navigation
Plug '/usr/local/opt/fzf' -- Source from homebrew
Plug 'junegunn/fzf.vim'
Plug 'ojroques/nvim-lspfuzzy' -- FZF navigation for LSP
Plug 'unblevable/quick-scope'
Plug 'google/vim-searchindex'

-- Completion, lint, fix
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug 'neovim/nvim-lspconfig'
Plug 'ray-x/lsp_signature.nvim'
Plug 'hrsh7th/nvim-cmp'

-- nvim-cmp sources
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'notomo/cmp-neosnippet'
Plug 'ray-x/cmp-treesitter'

-- Language specific plugins
Plug 'hashivim/vim-terraform'
Plug('rust-lang/rust.vim', {['for'] = 'rust'})
Plug('elixir-lang/vim-elixir', {['for'] = 'elixir'})

vim.call('plug#end')

vim.cmd('filetype plugin indent on')
vim.cmd('silent! colorscheme gruvbox') -- Set Gruvbox theme
vim.cmd('syntax on')

-- Global options
vim.opt.termguicolors = true
vim.opt.background = 'dark'
vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 0
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
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

-- Rust
vim.g['rustfmt_autosave'] = 1

-- Terraform
vim.g['terraform_fmt_on_save'] = 1

-- Limelight
vim.g['limelight_conceal_ctermfg'] = 'gray'
vim.g['limelight_conceal_ctermfg'] = 240

require('lualine').setup{}
require('lspfuzzy').setup{}

local lspconfig = require 'lspconfig'
lspconfig.gopls.setup{}
lspconfig.jsonls.setup{}
lspconfig.html.setup{}
lspconfig.cssls.setup{}
lspconfig.vuels.setup{}
lspconfig.yamlls.setup{}
lspconfig.tsserver.setup{}
lspconfig.bashls.setup{}
lspconfig.terraformls.setup{}

require'nvim-treesitter.configs'.setup {
  -- ensure_installed = "all",
  highlight = {
    enable = true,
  },
  context_commentstring = {
    enable = true
  },
}

local lspkind = require('lspkind')
local cmp = require'cmp'
cmp.setup({
  snippet = {
    expand = function(args)
    -- unused due to neosnippet
    end,
  },
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    -- ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'neosnippet' },
    { name = 'path' },
    { name = 'treesitter' },
  },
  formatting = {
    format = lspkind.cmp_format()
  },
})

require'lsp_signature'.setup {
  bind = true,
  doc_lines = 5,
  floating_window = true,
  hint_enable = false,
  handler_opts = {border = "single"},
  extra_trigger_chars = {"(", ","},
}
END

" Clear search highlight
nnoremap <silent> <Space> :let @/=""<CR>

" custom mappings
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <Leader>a :cclose<CR>

" Using tmux/screen with ctrl-a 
nnoremap + <C-a>
nnoremap - <C-x>
xnoremap + g<C-a>
xnoremap - g<C-x>

" Neovim LSP
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gd 	<cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gi    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> tt    <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> <F2>  <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> [d    <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> ]d    <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <F2>  <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <Leader>ca     <cmd>lua vim.lsp.buf.code_action()<CR>

" neosnippet
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" FZF
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>l :Lines<CR>
nnoremap <Leader>c :BCommits<CR>
nnoremap <Leader>g :Rg<CR>

" Base64 decode selection
vnoremap <leader>64 c<c-r>=system('base64 --decode', @")<cr><esc>

" Language specifics
autocmd FileType ruby setlocal shiftwidth=2 sts=2 expandtab smartindent
autocmd FileType yaml setlocal shiftwidth=2 sts=2 expandtab smartindent
autocmd FileType html setlocal shiftwidth=2 sts=2 expandtab smartindent
autocmd BufWritePre *.go lua vim.lsp.buf.formatting()