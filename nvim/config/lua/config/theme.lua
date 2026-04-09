vim.pack.add({
	'https://github.com/nvim-tree/nvim-web-devicons',
	'https://github.com/RRethy/nvim-base16',
	'https://github.com/nvim-lualine/lualine.nvim',
})

-- Theme
vim.cmd.colorscheme('base16-gruvbox-dark-hard')

require('lualine').setup({
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
