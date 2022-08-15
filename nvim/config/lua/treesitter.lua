require('nvim-treesitter.configs').setup{
  ensure_installed = 'all',
  ignore_install = {
    'phpdoc' -- phpdoc has issues with ARM64
  },

  highlight = {
    enable = true,
  },

  context_commentstring = {
    enable = true
  },
}
