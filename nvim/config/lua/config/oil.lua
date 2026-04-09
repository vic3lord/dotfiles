vim.pack.add({
  'https://github.com/nvim-tree/nvim-web-devicons',
  'https://github.com/stevearc/oil.nvim',
})

require('oil').setup({
  float = {
    padding = 2, -- Padding around the floating window
    max_width = 0.4, -- Max width (90% of screen)
    max_height = 0.7, -- Max height (90% of screen)
    border = "rounded", -- 'single', 'double', 'shadow', etc.
    win_options = {
      winblend = 10, -- Transparency
    },
  },
})

-- Oil.nvim
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
