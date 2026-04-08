return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      float = {
        padding = 2, -- Padding around the floating window
        max_width = 0.4, -- Max width (90% of screen)
        max_height = 0.7, -- Max height (90% of screen)
        border = "rounded", -- 'single', 'double', 'shadow', etc.
        win_options = {
          winblend = 10, -- Transparency
        },
      },
    },
    -- Optional dependencies
    -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    lazy = false,
  },
}
