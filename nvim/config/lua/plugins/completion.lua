return {
  {
    "saghen/blink.cmp",
    dependencies = 'rafamadriz/friendly-snippets',
    version = "*",

    opts = {
      keymap = { preset = 'default' },
      signature = { enabled = true },
      -- sources = {
      --   default = { 'lsp', 'path', 'snippets', 'buffer', 'codecompanion', 'cmdline' },
      -- },
    },
  },

  {
    "github/copilot.vim",
  },
}
