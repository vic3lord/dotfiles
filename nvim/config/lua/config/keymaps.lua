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
