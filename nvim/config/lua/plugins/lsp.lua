return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require('lspconfig')
      local servers = {
        "gopls",
        "buf_ls",
        "jsonls",
        "html",
        "htmx",
        "cssls",
        "ts_ls",
        "bashls",
        "terraformls",
        "sqlls",
        "zls",
        "gleam",
      }

      for _, server in ipairs(servers) do
        lspconfig[server].setup{}
      end
    end
  },

  {
    "mason-org/mason.nvim", -- Manage LSP servers.
    opts = {},
  },
}
