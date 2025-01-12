return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.gopls.setup{}
      lspconfig.buf_ls.setup{}
      lspconfig.jsonls.setup{}
      lspconfig.html.setup{}
      lspconfig.htmx.setup{}
      lspconfig.cssls.setup{}
      lspconfig.vuels.setup{}
      -- lspconfig.yamlls.setup{}
      lspconfig.ts_ls.setup{}
      lspconfig.eslint.setup{}
      lspconfig.bashls.setup{}
      lspconfig.terraformls.setup{}
      lspconfig.sqlls.setup{}
      lspconfig.pylsp.setup{}
      lspconfig.ast_grep.setup{}
    end
  },

  {
    "williamboman/mason.nvim", -- Manage LSP servers.
    opts = {},
  },
}
