vim.pack.add({
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter', version = 'main' },
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter-context' },
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter-textobjects', version = 'main' },
})

require('nvim-treesitter').setup({
    incremental_selection = {
      enable = true,
    },

    textobjects = {
      select = {
        enable = true,

        -- Automatically jump forward to textobj, similar to targets.vim
        lookahead = true,

        keymaps = {
          -- You can use the capture groups defined in textobjects.scm
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
        }
      }
    }
})

local grammer_list = vim
  .iter(require("config.languages"))
  :map(function(grammer) return grammer.treesitter end)
  :filter(function(grammer) return grammer end)
  :flatten()
  :totable()

require('nvim-treesitter').install(grammer_list)

vim.api.nvim_create_autocmd('FileType', {
  pattern = grammer_list,
  callback = function() vim.treesitter.start() end,
})
