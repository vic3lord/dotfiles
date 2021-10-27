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
