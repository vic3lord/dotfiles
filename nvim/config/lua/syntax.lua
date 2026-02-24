local grammer_list = {
  'go',
  'gomod',
  'gosum',
  'javascript',
  'typescript',
  'rust',
  'zig',
  'gleam',
  'elixir',
  'bash',
  'lua',
}

require('nvim-treesitter').install(grammer_list)

vim.api.nvim_create_autocmd('FileType', {
  pattern = grammer_list,
  callback = function() vim.treesitter.start() end,
})

