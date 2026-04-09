vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = "*.html",
  command = "set filetype=html"
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "lua", "ruby", "yaml", "html", "json" },
  callback = function()
    local opts = {
      tabstop = 2,
      shiftwidth = 2,
      softtabstop = 2,
      expandtab = true,
      smartindent = true,
    }
    for k, v in pairs(opts) do
      vim.opt_local[k] = v
    end
  end
})
