local map = vim.api.nvim_set_keymap

-- Using tmux/screen with ctrl-a 
map('n', '+', '<C-a>', { noremap = true })
map('n', '-', '<C-x>', { noremap = true })
map('x', '+', 'g<C-a>', { noremap = true })
map('x', '-', 'g<C-x>', { noremap = true })

-- LSP
local opts = { noremap = true, silent = true }
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
map('n', 'tt', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
map('n', 'g0', '<cmd>lua vim.lsp.buf.document_symbol()<CR>', opts)
map('n', 'gW', '<cmd>lua vim.lsp.buf.workspace_symbol()<CR>', opts)
map('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
map('n', ']d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
map('n', '<Leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
map('n', '<Leader>cl', '<cmd>lua vim.lsp.codelens.run()<CR>', opts)

-- DAP
map('n', '<F7>', '<cmd>lua require"dap".step_into()<CR>', opts)
map('n', '<F8>', '<cmd>lua require"dap".step_over()<CR>', opts)
map('n', '<F9>', '<cmd>lua require"dap".continue()<CR>', opts)
map('n', '<Leader>db', '<cmd>lua require"dap".toggle_breakpoint()<CR>', opts)
map('n', '<Leader>dc', '<cmd>lua require"dap".clear_breakpoints()<CR>', opts)
map('n', '<Leader>dt', '<cmd>lua require"dap-go".debug_test()<CR>', opts)

-- nvim-test
map('n', '<Leader>tf', ':TestFile<CR>', opts)
map('n', '<Leader>tt', ':TestNearest<CR>', opts)

-- Neosnippet
map('i', '<C-k>', '<Plug>(neosnippet_expand_or_jump)', {})
map('s', '<C-k>', '<Plug>(neosnippet_expand_or_jump)', {})
map('x', '<C-k>', '<Plug>(neosnippet_expand_target)', {})

-- FZF
map('n', '<Leader>f', ':Files<CR>', { noremap = true })
map('n', '<Leader>b', ':Buffers<CR>', { noremap = true })
map('n', '<Leader>l', ':Lines<CR>', { noremap = true })
map('n', '<Leader>gs', ':GFiles?<CR>', { noremap = true })
map('n', '<Leader>C', ':Commits<CR>', { noremap = true })
map('n', '<Leader>c', ':BCommits<CR>', { noremap = true })
map('n', '<Leader>g', ':Rg<CR>', { noremap = true })

-- Quickfix
map('', '<C-n>', ':cnext<CR>', {})
map('', '<C-m>', ':cprevious<CR>', {})
map('n', '<Leader>a', ':cclose<CR>', { noremap = true })

-- Nvim tree
map('n', '<Leader>q', ':NvimTreeToggle<CR>', opts)
map('n', '<Leader>n', ':NvimTreeFindFile<CR>', opts)
