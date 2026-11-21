vim.pack.add({
  'https://github.com/nvim-lualine/lualine.nvim',
})

-- Theme: the built-in colorscheme with 'notermguicolors' (see options.lua)
-- draws with Rex's ANSI palette, so nvim follows the Rex theme.
-- The built-in scheme leaves comments uncolored in cterm; use bright black.
-- Re-applied on 'background' changes, which reset the built-in highlights.
local function comment_hl()
  vim.api.nvim_set_hl(0, 'Comment', { ctermfg = 8 })
end
comment_hl()
vim.api.nvim_create_autocmd({ 'ColorScheme', 'OptionSet' }, {
  pattern = { '*', 'background' },
  callback = function(ev)
    if ev.event == 'ColorScheme' or ev.match == 'background' then
      comment_hl()
    end
  end,
})

require('lualine').setup({
  options = { theme = '16color' },
  sections = {
    lualine_b = {
      {
        "branch",
        fmt = function(str)
          if #str > 20 then
            return str:sub(1, 17) .. "..."
          end
          return str
        end,
      },
      "diff",
      "diagnostics",
    },
    lualine_c = {
      {
        'filename',
        path = 1,
        fmt = function(path)
          local parts = vim.split(path, "/")
          if #parts > 4 then
            return ".../" .. table.concat(parts, "/", #parts - 2)
          end
          return path
        end,
      },
    },
  }
})
