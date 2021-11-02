-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

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

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/ore/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/ore/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/ore/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/ore/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/ore/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
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
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/cmp-buffer"
  },
  ["cmp-neosnippet"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/cmp-neosnippet"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/cmp-path"
  },
  ["cmp-treesitter"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/cmp-treesitter"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/editorconfig-vim"
  },
  fzf = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["git-blame.nvim"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/git-blame.nvim"
  },
  ["goyo.vim"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/goyo.vim"
  },
  gruvbox = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/gruvbox"
  },
  ["limelight.vim"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/limelight.vim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\n¼\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\24extra_trigger_chars\1\3\0\0\6(\6,\17handler_opts\1\0\1\vborder\vsingle\1\0\4\tbind\2\16hint_enable\1\20floating_window\2\14doc_lines\3\5\nsetup\18lsp_signature\frequire\0" },
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["neosnippet-snippets"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/neosnippet-snippets"
  },
  ["neosnippet.vim"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/neosnippet.vim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n\v\0\1\1\0\0\0\1K\0\1\0É\3\1\0\t\0\29\00046\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0015\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0045\5\v\0009\6\t\0019\6\n\6)\büÿB\6\2\2=\6\f\0059\6\t\0019\6\n\6)\b\4\0B\6\2\2=\6\r\0059\6\t\0019\6\14\6B\6\1\2=\6\15\0059\6\t\0019\6\16\0065\b\17\0B\6\2\2=\6\18\5=\5\t\0044\5\6\0005\6\19\0>\6\1\0055\6\20\0>\6\2\0055\6\21\0>\6\3\0055\6\22\0>\6\4\0055\6\23\0>\6\5\5=\5\24\0045\5\26\0009\6\25\0B\6\1\2=\6\27\5=\5\28\4B\2\2\1K\0\1\0\15formatting\vformat\1\0\0\15cmp_format\fsources\1\0\1\tname\15treesitter\1\0\1\tname\tpath\1\0\1\tname\15neosnippet\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nclose\n<C-f>\n<C-d>\1\0\0\16scroll_docs\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\flspkind\frequire\0" },
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspfuzzy"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/nvim-lspfuzzy"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["octo.nvim"] = {
    config = { "\27LJ\2\n2\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\tocto\frequire\0" },
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/octo.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["quick-scope"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/quick-scope"
  },
  ["rust.vim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/opt/rust.vim"
  },
  tabular = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/tabular"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/vim-dadbod"
  },
  ["vim-elixir"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/opt/vim-elixir"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gurl"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/vim-gurl"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-searchindex"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/vim-searchindex"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-terraform"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/opt/vim-terraform"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/Users/ore/.local/share/nvim/site/pack/packer/start/vim-unimpaired"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\n¼\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\24extra_trigger_chars\1\3\0\0\6(\6,\17handler_opts\1\0\1\vborder\vsingle\1\0\4\tbind\2\16hint_enable\1\20floating_window\2\14doc_lines\3\5\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: octo.nvim
time([[Config for octo.nvim]], true)
try_loadstring("\27LJ\2\n2\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\tocto\frequire\0", "config", "octo.nvim")
time([[Config for octo.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n\v\0\1\1\0\0\0\1K\0\1\0É\3\1\0\t\0\29\00046\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0015\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0045\5\v\0009\6\t\0019\6\n\6)\büÿB\6\2\2=\6\f\0059\6\t\0019\6\n\6)\b\4\0B\6\2\2=\6\r\0059\6\t\0019\6\14\6B\6\1\2=\6\15\0059\6\t\0019\6\16\0065\b\17\0B\6\2\2=\6\18\5=\5\t\0044\5\6\0005\6\19\0>\6\1\0055\6\20\0>\6\2\0055\6\21\0>\6\3\0055\6\22\0>\6\4\0055\6\23\0>\6\5\5=\5\24\0045\5\26\0009\6\25\0B\6\1\2=\6\27\5=\5\28\4B\2\2\1K\0\1\0\15formatting\vformat\1\0\0\15cmp_format\fsources\1\0\1\tname\15treesitter\1\0\1\tname\tpath\1\0\1\tname\15neosnippet\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nclose\n<C-f>\n<C-d>\1\0\0\16scroll_docs\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\flspkind\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType elixir ++once lua require("packer.load")({'vim-elixir'}, { ft = "elixir" }, _G.packer_plugins)]]
vim.cmd [[au FileType terraform ++once lua require("packer.load")({'vim-terraform'}, { ft = "terraform" }, _G.packer_plugins)]]
vim.cmd [[au FileType rust ++once lua require("packer.load")({'rust.vim'}, { ft = "rust" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /Users/ore/.local/share/nvim/site/pack/packer/opt/rust.vim/ftdetect/rust.vim]], true)
vim.cmd [[source /Users/ore/.local/share/nvim/site/pack/packer/opt/rust.vim/ftdetect/rust.vim]]
time([[Sourcing ftdetect script at: /Users/ore/.local/share/nvim/site/pack/packer/opt/rust.vim/ftdetect/rust.vim]], false)
time([[Sourcing ftdetect script at: /Users/ore/.local/share/nvim/site/pack/packer/opt/vim-elixir/ftdetect/elixir.vim]], true)
vim.cmd [[source /Users/ore/.local/share/nvim/site/pack/packer/opt/vim-elixir/ftdetect/elixir.vim]]
time([[Sourcing ftdetect script at: /Users/ore/.local/share/nvim/site/pack/packer/opt/vim-elixir/ftdetect/elixir.vim]], false)
time([[Sourcing ftdetect script at: /Users/ore/.local/share/nvim/site/pack/packer/opt/vim-terraform/ftdetect/hcl.vim]], true)
vim.cmd [[source /Users/ore/.local/share/nvim/site/pack/packer/opt/vim-terraform/ftdetect/hcl.vim]]
time([[Sourcing ftdetect script at: /Users/ore/.local/share/nvim/site/pack/packer/opt/vim-terraform/ftdetect/hcl.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
