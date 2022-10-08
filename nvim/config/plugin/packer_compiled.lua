-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/orelimelech/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/orelimelech/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/orelimelech/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/orelimelech/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/orelimelech/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-neosnippet"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/cmp-neosnippet",
    url = "https://github.com/notomo/cmp-neosnippet"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-treesitter"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/cmp-treesitter",
    url = "https://github.com/ray-x/cmp-treesitter"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/editorconfig-vim",
    url = "https://github.com/editorconfig/editorconfig-vim"
  },
  fzf = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/fzf",
    url = "/opt/homebrew/opt/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["git-blame.nvim"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/git-blame.nvim",
    url = "https://github.com/f-person/git-blame.nvim"
  },
  ["goyo.vim"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/goyo.vim",
    url = "https://github.com/junegunn/goyo.vim"
  },
  ["limelight.vim"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/limelight.vim",
    url = "https://github.com/junegunn/limelight.vim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\n¼\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\24extra_trigger_chars\1\3\0\0\6(\6,\17handler_opts\1\0\1\vborder\vsingle\1\0\4\16hint_enable\1\20floating_window\2\14doc_lines\3\5\tbind\2\nsetup\18lsp_signature\frequire\0" },
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["neosnippet-snippets"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/neosnippet-snippets",
    url = "https://github.com/Shougo/neosnippet-snippets"
  },
  ["neosnippet.vim"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/neosnippet.vim",
    url = "https://github.com/Shougo/neosnippet.vim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n\v\0\1\1\0\0\0\1K\0\1\0—\4\1\0\t\0!\0<6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0015\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0045\5\v\0009\6\t\0019\6\n\6B\6\1\2=\6\f\0059\6\t\0019\6\r\6B\6\1\2=\6\14\0059\6\t\0019\6\15\6)\büÿB\6\2\2=\6\16\0059\6\t\0019\6\15\6)\b\4\0B\6\2\2=\6\17\0059\6\t\0019\6\18\6B\6\1\2=\6\19\0059\6\t\0019\6\20\0065\b\21\0B\6\2\2=\6\22\5=\5\t\0044\5\6\0005\6\23\0>\6\1\0055\6\24\0>\6\2\0055\6\25\0>\6\3\0055\6\26\0>\6\4\0055\6\27\0>\6\5\5=\5\28\0045\5\30\0009\6\29\0B\6\1\2=\6\31\5=\5 \4B\2\2\1K\0\1\0\15formatting\vformat\1\0\0\15cmp_format\fsources\1\0\1\tname\15treesitter\1\0\1\tname\tpath\1\0\1\tname\15neosnippet\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nclose\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\flspkind\frequire\0" },
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-go"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vdap-go\frequire\0" },
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/nvim-dap-go",
    url = "https://github.com/leoluz/nvim-dap-go"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ndapui\frequire\0" },
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-lspfuzzy"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rlspfuzzy\frequire\0" },
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/nvim-lspfuzzy",
    url = "https://github.com/ojroques/nvim-lspfuzzy"
  },
  ["nvim-test"] = {
    config = { "\27LJ\2\np\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\rtermOpts\1\0\0\1\0\2\fgo_back\1\14direction\15horizontal\nsetup\14nvim-test\frequire\0" },
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/nvim-test",
    url = "https://github.com/klen/nvim-test"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    config = { "\27LJ\2\nD\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\23treesitter-context\frequire\0" },
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["quick-scope"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/quick-scope",
    url = "https://github.com/unblevable/quick-scope"
  },
  ["rust.vim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/opt/rust.vim",
    url = "https://github.com/rust-lang/rust.vim"
  },
  tabular = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/tabular",
    url = "https://github.com/godlygeek/tabular"
  },
  ["themes.nvim"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/themes.nvim",
    url = "https://github.com/rafamadriz/themes.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-cue"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/opt/vim-cue",
    url = "https://github.com/jjo/vim-cue"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/vim-dadbod",
    url = "https://github.com/tpope/vim-dadbod"
  },
  ["vim-elixir"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/opt/vim-elixir",
    url = "https://github.com/elixir-lang/vim-elixir"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gurl"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/vim-gurl",
    url = "https://github.com/vitapluvia/vim-gurl"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-searchindex"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/vim-searchindex",
    url = "https://github.com/google/vim-searchindex"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-terraform"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/opt/vim-terraform",
    url = "https://github.com/hashivim/vim-terraform"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/Users/orelimelech/.local/share/nvim/site/pack/packer/start/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-dap-ui
time([[Config for nvim-dap-ui]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ndapui\frequire\0", "config", "nvim-dap-ui")
time([[Config for nvim-dap-ui]], false)
-- Config for: nvim-treesitter-context
time([[Config for nvim-treesitter-context]], true)
try_loadstring("\27LJ\2\nD\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\23treesitter-context\frequire\0", "config", "nvim-treesitter-context")
time([[Config for nvim-treesitter-context]], false)
-- Config for: nvim-lspfuzzy
time([[Config for nvim-lspfuzzy]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rlspfuzzy\frequire\0", "config", "nvim-lspfuzzy")
time([[Config for nvim-lspfuzzy]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n\v\0\1\1\0\0\0\1K\0\1\0—\4\1\0\t\0!\0<6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0015\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0045\5\v\0009\6\t\0019\6\n\6B\6\1\2=\6\f\0059\6\t\0019\6\r\6B\6\1\2=\6\14\0059\6\t\0019\6\15\6)\büÿB\6\2\2=\6\16\0059\6\t\0019\6\15\6)\b\4\0B\6\2\2=\6\17\0059\6\t\0019\6\18\6B\6\1\2=\6\19\0059\6\t\0019\6\20\0065\b\21\0B\6\2\2=\6\22\5=\5\t\0044\5\6\0005\6\23\0>\6\1\0055\6\24\0>\6\2\0055\6\25\0>\6\3\0055\6\26\0>\6\4\0055\6\27\0>\6\5\5=\5\28\0045\5\30\0009\6\29\0B\6\1\2=\6\31\5=\5 \4B\2\2\1K\0\1\0\15formatting\vformat\1\0\0\15cmp_format\fsources\1\0\1\tname\15treesitter\1\0\1\tname\tpath\1\0\1\tname\15neosnippet\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nclose\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\flspkind\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-test
time([[Config for nvim-test]], true)
try_loadstring("\27LJ\2\np\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\rtermOpts\1\0\0\1\0\2\fgo_back\1\14direction\15horizontal\nsetup\14nvim-test\frequire\0", "config", "nvim-test")
time([[Config for nvim-test]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\n¼\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\24extra_trigger_chars\1\3\0\0\6(\6,\17handler_opts\1\0\1\vborder\vsingle\1\0\4\16hint_enable\1\20floating_window\2\14doc_lines\3\5\tbind\2\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: nvim-dap-go
time([[Config for nvim-dap-go]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vdap-go\frequire\0", "config", "nvim-dap-go")
time([[Config for nvim-dap-go]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType terraform ++once lua require("packer.load")({'vim-terraform'}, { ft = "terraform" }, _G.packer_plugins)]]
vim.cmd [[au FileType rust ++once lua require("packer.load")({'rust.vim'}, { ft = "rust" }, _G.packer_plugins)]]
vim.cmd [[au FileType cue ++once lua require("packer.load")({'vim-cue'}, { ft = "cue" }, _G.packer_plugins)]]
vim.cmd [[au FileType elixir ++once lua require("packer.load")({'vim-elixir'}, { ft = "elixir" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /Users/orelimelech/.local/share/nvim/site/pack/packer/opt/rust.vim/ftdetect/rust.vim]], true)
vim.cmd [[source /Users/orelimelech/.local/share/nvim/site/pack/packer/opt/rust.vim/ftdetect/rust.vim]]
time([[Sourcing ftdetect script at: /Users/orelimelech/.local/share/nvim/site/pack/packer/opt/rust.vim/ftdetect/rust.vim]], false)
time([[Sourcing ftdetect script at: /Users/orelimelech/.local/share/nvim/site/pack/packer/opt/vim-elixir/ftdetect/elixir.vim]], true)
vim.cmd [[source /Users/orelimelech/.local/share/nvim/site/pack/packer/opt/vim-elixir/ftdetect/elixir.vim]]
time([[Sourcing ftdetect script at: /Users/orelimelech/.local/share/nvim/site/pack/packer/opt/vim-elixir/ftdetect/elixir.vim]], false)
time([[Sourcing ftdetect script at: /Users/orelimelech/.local/share/nvim/site/pack/packer/opt/vim-cue/ftdetect/cue.vim]], true)
vim.cmd [[source /Users/orelimelech/.local/share/nvim/site/pack/packer/opt/vim-cue/ftdetect/cue.vim]]
time([[Sourcing ftdetect script at: /Users/orelimelech/.local/share/nvim/site/pack/packer/opt/vim-cue/ftdetect/cue.vim]], false)
time([[Sourcing ftdetect script at: /Users/orelimelech/.local/share/nvim/site/pack/packer/opt/vim-terraform/ftdetect/hcl.vim]], true)
vim.cmd [[source /Users/orelimelech/.local/share/nvim/site/pack/packer/opt/vim-terraform/ftdetect/hcl.vim]]
time([[Sourcing ftdetect script at: /Users/orelimelech/.local/share/nvim/site/pack/packer/opt/vim-terraform/ftdetect/hcl.vim]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
