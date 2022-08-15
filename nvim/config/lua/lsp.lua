-- LSP servers configs
local lspconfig = require('lspconfig')
lspconfig.gopls.setup{
  settings = {
    gopls = {
      codelenses = { test = true },
    }
  }
}
lspconfig.jsonls.setup{}
lspconfig.html.setup{}
lspconfig.cssls.setup{}
lspconfig.vuels.setup{}
lspconfig.yamlls.setup{}
lspconfig.tsserver.setup{}
lspconfig.bashls.setup{}
lspconfig.terraformls.setup{}
lspconfig.sqls.setup{}