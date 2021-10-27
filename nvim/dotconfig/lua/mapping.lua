local map = vim.api.nvim_set_keymap

-- Clear search highlight
map('n', '<Space>', ':let @/=""<CR>', { noremap = true, silent = true })

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
map('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
map('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
map('n', '<Leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)

-- Neosnippet
map('i', '<C-k>', '<Plug>(neosnippet_expand_or_jump)', {})
map('s', '<C-k>', '<Plug>(neosnippet_expand_or_jump)', {})
map('x', '<C-k>', '<Plug>(neosnippet_expand_target)', {})
