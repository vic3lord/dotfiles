local opts = { noremap = true, silent = true }

-- Global
vim.keymap.set('n', '<leader>h', ':FzfLua helptags<CR>', opts)

-- LSP
vim.keymap.set('n', 'gD', ':FzfLua lsp_declarations<CR>', opts)
vim.keymap.set('n', 'gi', ':FzfLua lsp_implementations<CR>', opts)
vim.keymap.set('n', 'gr', ':FzfLua lsp_references<CR>', opts)
vim.keymap.set('n', 'g0', ':FzfLua lsp_document_symbols<CR>', opts)
vim.keymap.set('n', 'gW', ':FzfLua lsp_live_workspace_symbols<CR>', opts)
vim.keymap.set('n', '<leader>cl', ':lua vim.lsp.codelens.run()<CR>', opts)

-- nvim-test
vim.keymap.set('n', '<leader>tf', ':TestFile<CR>', opts)
vim.keymap.set('n', '<leader>tt', ':TestNearest<CR>', opts)

-- FZF
vim.keymap.set('n', '<leader>f', ':FzfLua files<CR>', { noremap = true })
vim.keymap.set('n', '<leader>gf', ':FzfLua git_files<CR>', { noremap = true })
vim.keymap.set('n', '<leader>b', ':FzfLua buffers<CR>', { noremap = true })
vim.keymap.set('n', '<leader>l', ':FzfLua lines<CR>', { noremap = true })
vim.keymap.set('n', '<leader>gs', ':FzfLua git_status<CR>', { noremap = true })
vim.keymap.set('n', '<leader>C', ':FzfLua git_commits<CR>', { noremap = true })
vim.keymap.set('n', '<leader>c', ':FzfLua git_bcommits<CR>', { noremap = true })
vim.keymap.set('n', '<leader>g', ':FzfLua grep_project<CR>', { noremap = true })
vim.keymap.set('n', '<leader>km', ':FzfLua keymaps<CR>', { noremap = true })

-- Oil.nvim
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
