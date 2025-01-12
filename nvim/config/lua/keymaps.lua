-- LSP
local opts = { noremap = true, silent = true }
vim.keymap.set('n', 'gD', ':FzfLua lsp_declarations<CR>', opts)
vim.keymap.set('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', opts)
vim.keymap.set('n', 'gi', ':FzfLua lsp_implementations<CR>', opts)
vim.keymap.set('n', '<C-k>', ':lua vim.lsp.buf.signature_help()<CR>', opts)
vim.keymap.set('n', 'tt', ':lua vim.lsp.buf.type_definition()<CR>', opts)
vim.keymap.set('n', 'gr', ':FzfLua lsp_references<CR>', opts)
vim.keymap.set('n', 'g0', ':FzfLua lsp_document_symbols<CR>', opts)
vim.keymap.set('n', 'gW', ':FzfLua lsp_live_workspace_symbols<CR>', opts)
vim.keymap.set('n', '<F2>', ':lua vim.lsp.buf.rename()<CR>', opts)
vim.keymap.set('n', '<leader>ca', ':lua vim.lsp.buf.code_action()<CR>', opts)
vim.keymap.set('n', '<leader>cl', ':lua vim.lsp.codelens.run()<CR>', opts)

-- nvim-test
vim.keymap.set('n', '<leader>tf', ':TestFile<CR>', opts)
vim.keymap.set('n', '<leader>tt', ':TestNearest<CR>', opts)

-- FZF
vim.keymap.set('n', '<leader>f', ':FzfLua files<CR>', { noremap = true })
vim.keymap.set('n', '<leader>b', ':FzfLua buffers<CR>', { noremap = true })
vim.keymap.set('n', '<leader>l', ':FzfLua lines<CR>', { noremap = true })
vim.keymap.set('n', '<leader>gs', ':FzfLua git_status<CR>', { noremap = true })
vim.keymap.set('n', '<leader>C', ':FzfLua git_commits<CR>', { noremap = true })
vim.keymap.set('n', '<leader>c', ':FzfLua git_bcommits<CR>', { noremap = true })
vim.keymap.set('n', '<leader>g', ':FzfLua grep_project<CR>', { noremap = true })

-- Quickfix
vim.keymap.set('', '<M-j>', ':cnext<CR>', {})
vim.keymap.set('', '<M-k>', ':cprevious<CR>', {})

-- Oil.nvim
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
