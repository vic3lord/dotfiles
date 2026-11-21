vim.pack.add({
  'https://github.com/ibhagwan/fzf-lua',
})

-- Follow the Rex theme: start from fzf's 16-color ANSI base scheme (its
-- default 256-color palette ignores the terminal theme). Set through
-- FZF_DEFAULT_OPTS so it comes before fzf-lua's generated --color overrides;
-- a later base-scheme --color would reset them.
local fzf_opts = vim.env.FZF_DEFAULT_OPTS or ''
if not fzf_opts:find('--color=16', 1, true) then
  vim.env.FZF_DEFAULT_OPTS = vim.trim('--color=16 ' .. fzf_opts)
end

require('fzf-lua').setup({
  fzf_colors = true
})

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<leader>h', ':FzfLua helptags<CR>', opts)
vim.keymap.set('n', '<leader>f', ':FzfLua files<CR>', { noremap = true })
vim.keymap.set('n', '<leader>gf', ':FzfLua git_files<CR>', { noremap = true })
vim.keymap.set('n', '<leader>b', ':FzfLua buffers<CR>', { noremap = true })
vim.keymap.set('n', '<leader>l', ':FzfLua lines<CR>', { noremap = true })
vim.keymap.set('n', '<leader>gs', ':FzfLua git_status<CR>', { noremap = true })
vim.keymap.set('n', '<leader>C', ':FzfLua git_commits<CR>', { noremap = true })
vim.keymap.set('n', '<leader>c', ':FzfLua git_bcommits<CR>', { noremap = true })
vim.keymap.set('n', '<leader>g', ':FzfLua grep_project<CR>', { noremap = true })
vim.keymap.set('n', '<leader>km', ':FzfLua keymaps<CR>', { noremap = true })
