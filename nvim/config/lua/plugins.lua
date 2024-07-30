return {
  -- Themes
  "rafamadriz/themes.nvim",

  "RRethy/nvim-base16",

  {
    "nvim-lualine/lualine.nvim",
    opts = {},
  },

  {
    "onsails/lspkind-nvim",
    dependencies = { "kyazdani42/nvim-web-devicons" },
  },

  -- Common stuff
  "tpope/vim-surround",
  "tpope/vim-repeat",
  "tpope/vim-fugitive", -- Git client
  "tpope/vim-unimpaired",
  "f-person/git-blame.nvim",
  "vitapluvia/vim-gurl", -- Github URL to clipboard
  "junegunn/limelight.vim",
  "junegunn/goyo.vim",
  "godlygeek/tabular",

  -- Search and navigation
  {
    "junegunn/fzf.vim",
    dependencies = { { "junegunn/fzf", build = "./install --all" } },
  },

  {
    "kyazdani42/nvim-tree.lua",
    dependencies = { "kyazdani42/nvim-web-devicons" },
    opts = {},
  },

  {
    "ojroques/nvim-lspfuzzy",
    opts = {},
  },

  "unblevable/quick-scope",
  "google/vim-searchindex",

  -- Completion, lint, fix
  "jiangmiao/auto-pairs",

  "github/copilot.vim",

  {
    "Shougo/neosnippet.vim",
    dependencies = { "Shougo/neosnippet-snippets" },
  },

  "neovim/nvim-lspconfig",

  {
    "williamboman/mason.nvim",
    opts = {},
  },

  {
    "ray-x/lsp_signature.nvim",
    opts = {
        bind = true,
        doc_lines = 5,
        floating_window = true,
        hint_enable = false,
        handler_opts = {border = "single"},
        extra_trigger_chars = {"(", ","},
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },

  {
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {},
  },

  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "notomo/cmp-neosnippet",
      "ray-x/cmp-treesitter",
    },
    config = function()
      local lspkind = require("lspkind")
      local cmp = require("cmp")

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
    end,
  },

  {
    "klen/nvim-test",
    opts = {
      termOpts = {
        direction = "horizontal",
        go_back = false,
      },
    },
  },

  {
    "kndndrj/nvim-dbee",
    dependencies = { "MunifTanjim/nui.nvim" },
    build = function()
      require("dbee").install()
    end,
    opts = {},
  },

  -- Language specific plugins
  {
    "hashivim/vim-terraform",
    ft = { "terraform" },
  },

  {
    "rust-lang/rust.vim",
    ft = { "rust" },
  },
}
