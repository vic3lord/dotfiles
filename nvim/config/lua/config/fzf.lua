vim.pack.add({
  'https://github.com/ibhagwan/fzf-lua',
  'https://github.com/nvim-tree/nvim-web-devicons',
})

require('fzf-lua').setup({
  fzf_colors = true
})

vim.keymap.set('n', '<leader>f', ':FzfLua files<CR>', { noremap = true })
vim.keymap.set('n', '<leader>gf', ':FzfLua git_files<CR>', { noremap = true })
vim.keymap.set('n', '<leader>b', ':FzfLua buffers<CR>', { noremap = true })
vim.keymap.set('n', '<leader>l', ':FzfLua lines<CR>', { noremap = true })
vim.keymap.set('n', '<leader>gs', ':FzfLua git_status<CR>', { noremap = true })
vim.keymap.set('n', '<leader>C', ':FzfLua git_commits<CR>', { noremap = true })
vim.keymap.set('n', '<leader>c', ':FzfLua git_bcommits<CR>', { noremap = true })
vim.keymap.set('n', '<leader>g', ':FzfLua grep_project<CR>', { noremap = true })
vim.keymap.set('n', '<leader>km', ':FzfLua keymaps<CR>', { noremap = true })
