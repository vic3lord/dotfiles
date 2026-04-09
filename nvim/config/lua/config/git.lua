local gh = function(x) return 'https://github.com/' .. x end

vim.pack.add({
  gh('tpope/vim-fugitive'), -- Git client

  gh('vitapluvia/vim-gurl'), -- Github URL to clipboard

  gh('f-person/git-blame.nvim'),
})
