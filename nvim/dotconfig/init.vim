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

require 'options'


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

require 'mapping'
END

" custom mappings
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <Leader>a :cclose<CR>

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
