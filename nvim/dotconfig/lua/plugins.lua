-- vim-plug
vim.cmd('packadd packer.nvim')
return require('packer').startup(function()
  -- Packer manages itself
  use 'wbthomason/packer.nvim'

  -- Themes
  use 'morhetz/gruvbox'
  use {
    'nvim-lualine/lualine.nvim',
    config = function() require('lualine').setup{} end
  }

  use {
    'onsails/lspkind-nvim',
    requires = { { 'kyazdani42/nvim-web-devicons' } },
  } 

  -- Common stuff
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'tpope/vim-repeat'
  use 'tpope/vim-fugitive' -- Git client
  use 'tpope/vim-unimpaired'
  use 'tpope/vim-dadbod' -- Database client
  use 'JoosepAlviste/nvim-ts-context-commentstring' -- update commentstring based on treesitter
  use 'f-person/git-blame.nvim'
  use 'vitapluvia/vim-gurl' -- Github URL to clipboard
  use 'editorconfig/editorconfig-vim'
  use 'junegunn/limelight.vim'
  use 'junegunn/goyo.vim'
  use 'godlygeek/tabular'

  -- Search and navigation
  use { '/usr/local/opt/fzf', requires = { { 'junegunn/fzf.vim' } } }
  use 'ojroques/nvim-lspfuzzy' -- FZF navigation for LSP
  use 'unblevable/quick-scope'
  use 'google/vim-searchindex'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require('nvim-tree').setup {} end
}

  -- Completion, lint, fix
  use 'jiangmiao/auto-pairs'
  use 'Shougo/neosnippet.vim'
  use 'Shougo/neosnippet-snippets'
  use { 'neovim/nvim-lspconfig' }

  use {
    'ray-x/lsp_signature.nvim',
    config = function()
      require('lsp_signature').setup{
        bind = true,
        doc_lines = 5,
        floating_window = true,
        hint_enable = false,
        handler_opts = {border = "single"},
        extra_trigger_chars = {"(", ","},
      }
    end
  }

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use {
    'hrsh7th/nvim-cmp',
    config = function()
      local lspkind = require('lspkind')
      local cmp = require('cmp')

      cmp.setup({
        snippet = {
          expand = function(_)
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
    end
  }

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'notomo/cmp-neosnippet'
  use 'ray-x/cmp-treesitter'

  -- Language specific plugins
  use {
    'hashivim/vim-terraform',
    ft = { 'terraform' },
  }

  use {
    'rust-lang/rust.vim',
    ft = { 'rust' },
  }

  use {
    'elixir-lang/vim-elixir',
    ft = { 'elixir' },
  }

  use {
    "folke/which-key.nvim",
    config = function() require("which-key").setup{} end
  }
end)
