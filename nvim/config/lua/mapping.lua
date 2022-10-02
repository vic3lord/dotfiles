-- Using tmux/screen with ctrl-a 
vim.keymap.set('n', '+', '<C-a>', { noremap = true })
vim.keymap.set('n', '-', '<C-x>', { noremap = true })
vim.keymap.set('x', '+', 'g<C-a>', { noremap = true })
vim.keymap.set('x', '-', 'g<C-x>', { noremap = true })

-- LSP
local opts = { noremap = true, silent = true }
vim.keymap.set('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>', opts)
vim.keymap.set('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', opts)
vim.keymap.set('n', 'K', ':lua vim.lsp.buf.hover()<CR>', opts)
vim.keymap.set('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>', opts)
vim.keymap.set('n', '<C-k>', ':lua vim.lsp.buf.signature_help()<CR>', opts)
vim.keymap.set('n', 'tt', ':lua vim.lsp.buf.type_definition()<CR>', opts)
vim.keymap.set('n', 'gr', ':lua vim.lsp.buf.references()<CR>', opts)
vim.keymap.set('n', 'g0', ':lua vim.lsp.buf.document_symbol()<CR>', opts)
vim.keymap.set('n', 'gW', ':lua vim.lsp.buf.workspace_symbol()<CR>', opts)
vim.keymap.set('n', '<F2>', ':lua vim.lsp.buf.rename()<CR>', opts)
vim.keymap.set('n', '[d', ':lua vim.diagnostic.goto_prev()<CR>', opts)
vim.keymap.set('n', ']d', ':lua vim.diagnostic.goto_prev()<CR>', opts)
vim.keymap.set('n', '<leader>ca', ':lua vim.lsp.buf.code_action()<CR>', opts)
vim.keymap.set('n', '<leader>cl', ':lua vim.lsp.codelens.run()<CR>', opts)

-- DAP
vim.keymap.set('n', '<F7>', ':lua require"dap".step_into()<CR>', opts)
vim.keymap.set('n', '<F8>', ':lua require"dap".step_over()<CR>', opts)
vim.keymap.set('n', '<F9>', ':lua require"dap".continue()<CR>', opts)
vim.keymap.set('n', '<leader>db', ':lua require"dap".toggle_breakpoint()<CR>', opts)
vim.keymap.set('n', '<leader>B', ':lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>', opts)
vim.keymap.set('n', '<leader>dc', ':lua require"dap".clear_breakpoints()<CR>', opts)
vim.keymap.set('n', '<leader>dt', ':lua require"dap-go".debug_test()<CR>', opts)

-- nvim-test
vim.keymap.set('n', '<leader>tf', ':TestFile<CR>', opts)
vim.keymap.set('n', '<leader>tt', ':TestNearest<CR>', opts)

-- Neosnippet
vim.keymap.set('i', '<C-k>', '<Plug>(neosnippet_expand_or_jump)', {})
vim.keymap.set('s', '<C-k>', '<Plug>(neosnippet_expand_or_jump)', {})
vim.keymap.set('x', '<C-k>', '<Plug>(neosnippet_expand_target)', {})

-- FZF
vim.keymap.set('n', '<leader>f', ':Files<CR>', { noremap = true })
vim.keymap.set('n', '<leader>b', ':Buffers<CR>', { noremap = true })
vim.keymap.set('n', '<leader>l', ':Lines<CR>', { noremap = true })
vim.keymap.set('n', '<leader>gs', ':GFiles?<CR>', { noremap = true })
vim.keymap.set('n', '<leader>C', ':Commits<CR>', { noremap = true })
vim.keymap.set('n', '<leader>c', ':BCommits<CR>', { noremap = true })
vim.keymap.set('n', '<leader>g', ':Rg<CR>', { noremap = true })

-- Quickfix
vim.keymap.set('', '<C-n>', ':cnext<CR>', {})
vim.keymap.set('', '<C-m>', ':cprevious<CR>', {})
vim.keymap.set('n', '<leader>a', ':cclose<CR>', { noremap = true })

-- Nvim tree
vim.keymap.set('n', '<leader>q', ':NvimTreeToggle<CR>', opts)
vim.keymap.set('n', '<leader>n', ':NvimTreeFindFile<CR>', opts)
