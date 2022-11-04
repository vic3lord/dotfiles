-- vim-plug
vim.cmd.packadd('packer.nvim')
return require('packer').startup(function()
  -- Packer manages itself
  use 'wbthomason/packer.nvim'

  -- Themes
  use 'rafamadriz/themes.nvim'

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
  use {
    '/opt/homebrew/opt/fzf',
    requires = { { 'junegunn/fzf.vim' } },
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = { { 'kyazdani42/nvim-web-devicons' } },
    config = function() require'nvim-tree'.setup {} end
  }

  use {
    'ojroques/nvim-lspfuzzy',
    config = function() require('lspfuzzy').setup{} end
  }

  use 'unblevable/quick-scope'
  use 'google/vim-searchindex'

  -- Completion, lint, fix
  use 'jiangmiao/auto-pairs'

  use 'github/copilot.vim'

  use {
    'Shougo/neosnippet.vim',
    requires = { { 'Shougo/neosnippet-snippets' } },
  }

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

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }

  use {
    'nvim-treesitter/nvim-treesitter-context',
    requires = {
      { 'nvim-treesitter/nvim-treesitter' },
    },
    config = function() require('treesitter-context').setup{} end
  }

  use {
    'hrsh7th/nvim-cmp',
    requires = {
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'notomo/cmp-neosnippet' },
      { 'ray-x/cmp-treesitter' },
    },
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
          ['<C-p>'] = cmp.mapping.select_prev_item(),
          ['<C-n>'] = cmp.mapping.select_next_item(),
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


  -- DAP
  use {
    'mfussenegger/nvim-dap',
  }

  use {
    'leoluz/nvim-dap-go',
    requires = {
      { 'mfussenegger/nvim-dap' },
    },
    config = function()
      require('dap-go').setup()
    end
  }

  use {
    'rcarriga/nvim-dap-ui',
    requires = {
      { 'mfussenegger/nvim-dap' },
    },
    config = function()
      require('dapui').setup()
    end
  }

  
  use {
    'klen/nvim-test',
    config = function()
      require('nvim-test').setup{
        termOpts = {
          direction = "horizontal",
          go_back = false,
        },
      }
    end
  }

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
    'jjo/vim-cue',
    ft = { 'cue' },
  }
end)
