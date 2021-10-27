require('lspfuzzy').setup{}

-- LSP servers configs
local lspconfig = require('lspconfig')
lspconfig.gopls.setup{}
lspconfig.jsonls.setup{}
lspconfig.html.setup{}
lspconfig.cssls.setup{}
lspconfig.vuels.setup{}
lspconfig.yamlls.setup{}
lspconfig.tsserver.setup{}
lspconfig.bashls.setup{}
lspconfig.terraformls.setup{}

local cmp = require'cmp'
cmp.setup({
  snippet = {
    expand = function(args)
    -- unused due to neosnippet
    end,
  },
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    -- ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'neosnippet' },
    { name = 'path' },
    { name = 'treesitter' },
  },
  formatting = {
    format = require('lspkind').cmp_format()
  },
})

require'lsp_signature'.setup {
  bind = true,
  doc_lines = 5,
  floating_window = true,
  hint_enable = false,
  handler_opts = {border = "single"},
  extra_trigger_chars = {"(", ","},
}
