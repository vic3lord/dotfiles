return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function() 
      require('nvim-treesitter.configs').setup{
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
      }
    end
  },

  {
    "nvim-treesitter/nvim-treesitter-context", -- Show the context you are in.
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {},
  },

  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  },
}
