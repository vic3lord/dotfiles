return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    branch = "main",
    lazy = false,
    opts = {
    -- config = function() 
      -- require('nvim-treesitter.configs').setup{
        ensure_installed = 'all',
        ignore_install = {
          'phpdoc' -- phpdoc has issues with ARM64
        },

        highlight = {
          enable = true,
        },

        incremental_selection = {
          enable = true,
        },

        textobjects = {
          select = {
            enable = true,

            -- Automatically jump forward to textobj, similar to targets.vim
            lookahead = true,

            keymaps = {
              -- You can use the capture groups defined in textobjects.scm
              ["af"] = "@function.outer",
              ["if"] = "@function.inner",
            },
          },
        },
      }
    -- end
  },

  {
    "nvim-treesitter/nvim-treesitter-context", -- Show the context you are in.
    -- dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {},
  },

  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    branch = "main",
    -- dependencies = { "nvim-treesitter/nvim-treesitter" },
  },
}
