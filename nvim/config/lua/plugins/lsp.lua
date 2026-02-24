return {
  {
    "neovim/nvim-lspconfig",
    config = function()
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
        vim.lsp.enable(server)
      end
    end
  },

  {
    "mason-org/mason.nvim", -- Manage LSP servers.
    opts = {},
  },
}
