local opts = { noremap = true, silent = true }

-- nvim-test
vim.keymap.set('n', '<leader>tf', ':TestFile<CR>', opts)
vim.keymap.set('n', '<leader>tt', ':TestNearest<CR>', opts)
