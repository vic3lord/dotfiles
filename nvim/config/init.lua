local configs = {
	'opts',
	'keymaps',
	'theme',
	'oil',
	'treesitter',
	'lsp',
	'fzf',
	'motion',
	'autocmds',
	'git',
}

for _, config in ipairs(configs) do
	require('config.' .. config)
end
