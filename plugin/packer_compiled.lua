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
local package_path_str = "/home/alexeykovalev/.cache/nvim/packer_hererocks/2.1.1741730670/share/lua/5.1/?.lua;/home/alexeykovalev/.cache/nvim/packer_hererocks/2.1.1741730670/share/lua/5.1/?/init.lua;/home/alexeykovalev/.cache/nvim/packer_hererocks/2.1.1741730670/lib/luarocks/rocks-5.1/?.lua;/home/alexeykovalev/.cache/nvim/packer_hererocks/2.1.1741730670/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/alexeykovalev/.cache/nvim/packer_hererocks/2.1.1741730670/lib/lua/5.1/?.so"
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
  ["Comment.nvim"] = {
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  arcadia_search = {
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/arcadia_search",
    url = "/home/alexeykovalev/arcadia_search"
  },
  ["cellular-automaton.nvim"] = {
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/cellular-automaton.nvim",
    url = "https://github.com/Eandrju/cellular-automaton.nvim"
  },
  ["clangd_extensions.nvim"] = {
    config = { "\27LJ\2\nÈ\3\0\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\3=\3\v\0025\3\f\0=\3\r\2B\0\2\1K\0\1\0\16symbol_info\1\0\1\vborder\tnone\bast\1\0\2\16symbol_info\0\bast\0\15highlights\1\0\1\vdetail\fComment\15kind_icons\1\0\a\rRecovery\tüÖÅ\25TemplateTemplateParm\tüÖÉ\rCompound\tüÑ≤\18PackExpansion\tüÑø\20TranslationUnit\tüÖÑ\24TemplateParamObject\tüÖÉ\21TemplateTypeParm\tüÖÉ\15role_icons\1\0\3\15kind_icons\0\15highlights\0\15role_icons\0\1\0\6\15expression\tüÑî\14statement\6;\22template argument\tüÜÉ\ttype\tüÑ£\16declaration\tüÑì\14specifier\tüÑ¢\nsetup\22clangd_extensions\frequire\0" },
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/clangd_extensions.nvim",
    url = "https://github.com/p00f/clangd_extensions.nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["goto-arcanum.nvim"] = {
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/goto-arcanum.nvim",
    url = "https://github.com/segoon/goto-arcanum.nvim"
  },
  ["let-it-snow.nvim"] = {
    config = { "\27LJ\2\nN\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\bcmd\14LetItSnow\nsetup\16let-it-snow\frequire\0" },
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/let-it-snow.nvim",
    url = "https://github.com/marcussimonsen/let-it-snow.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nightfox.nvim"] = {
    config = { "\27LJ\2\nﬁ\1\0\0\5\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0'\2\n\0B\0\2\1K\0\1\0\26colorscheme carbonfox\bcmd\bvim\foptions\1\0\1\foptions\0\vstyles\1\0\2\rkeywords\tbold\14functions\vitalic\1\0\3\20terminal_colors\1\16transparent\2\vstyles\0\nsetup\rnightfox\frequire\0" },
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["no-neck-pain.nvim"] = {
    config = { "\27LJ\2\nI\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\nwidth\3x\nsetup\17no-neck-pain\frequire\0" },
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/no-neck-pain.nvim",
    url = "https://github.com/shortcuts/no-neck-pain.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-navbuddy"] = {
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/nvim-navbuddy",
    url = "https://github.com/SmiteshP/nvim-navbuddy"
  },
  ["nvim-navic"] = {
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/nvim-navic",
    url = "https://github.com/SmiteshP/nvim-navic"
  },
  ["nvim-tetris"] = {
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/nvim-tetris",
    url = "https://github.com/alec-gibson/nvim-tetris"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["schemastore.nvim"] = {
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/schemastore.nvim",
    url = "https://github.com/b0o/schemastore.nvim"
  },
  ["smear-cursor.nvim"] = {
    config = { "\27LJ\2\nº\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\6\23trailing_stiffness\4\0ÄÄÄˇ\3\21hide_target_hack\1\fenabled\1\28distance_stop_animating\4\0ÄÄÄˇ\3\14normal_bg\f#000000\14stiffness\4ö≥ÊÃ\tô≥¶ˇ\3\nsetup\17smear_cursor\frequire\0" },
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/smear-cursor.nvim",
    url = "https://github.com/sphamba/smear-cursor.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["yaml-navigation.nvim"] = {
    config = { "\27LJ\2\nA\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\20yaml-navigation\frequire\0" },
    loaded = true,
    path = "/home/alexeykovalev/.local/share/nvim/site/pack/packer/start/yaml-navigation.nvim",
    url = "https://github.com/segoon/yaml-navigation.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: yaml-navigation.nvim
time([[Config for yaml-navigation.nvim]], true)
try_loadstring("\27LJ\2\nA\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\20yaml-navigation\frequire\0", "config", "yaml-navigation.nvim")
time([[Config for yaml-navigation.nvim]], false)
-- Config for: clangd_extensions.nvim
time([[Config for clangd_extensions.nvim]], true)
try_loadstring("\27LJ\2\nÈ\3\0\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\3=\3\v\0025\3\f\0=\3\r\2B\0\2\1K\0\1\0\16symbol_info\1\0\1\vborder\tnone\bast\1\0\2\16symbol_info\0\bast\0\15highlights\1\0\1\vdetail\fComment\15kind_icons\1\0\a\rRecovery\tüÖÅ\25TemplateTemplateParm\tüÖÉ\rCompound\tüÑ≤\18PackExpansion\tüÑø\20TranslationUnit\tüÖÑ\24TemplateParamObject\tüÖÉ\21TemplateTypeParm\tüÖÉ\15role_icons\1\0\3\15kind_icons\0\15highlights\0\15role_icons\0\1\0\6\15expression\tüÑî\14statement\6;\22template argument\tüÜÉ\ttype\tüÑ£\16declaration\tüÑì\14specifier\tüÑ¢\nsetup\22clangd_extensions\frequire\0", "config", "clangd_extensions.nvim")
time([[Config for clangd_extensions.nvim]], false)
-- Config for: nightfox.nvim
time([[Config for nightfox.nvim]], true)
try_loadstring("\27LJ\2\nﬁ\1\0\0\5\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0'\2\n\0B\0\2\1K\0\1\0\26colorscheme carbonfox\bcmd\bvim\foptions\1\0\1\foptions\0\vstyles\1\0\2\rkeywords\tbold\14functions\vitalic\1\0\3\20terminal_colors\1\16transparent\2\vstyles\0\nsetup\rnightfox\frequire\0", "config", "nightfox.nvim")
time([[Config for nightfox.nvim]], false)
-- Config for: let-it-snow.nvim
time([[Config for let-it-snow.nvim]], true)
try_loadstring("\27LJ\2\nN\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\bcmd\14LetItSnow\nsetup\16let-it-snow\frequire\0", "config", "let-it-snow.nvim")
time([[Config for let-it-snow.nvim]], false)
-- Config for: smear-cursor.nvim
time([[Config for smear-cursor.nvim]], true)
try_loadstring("\27LJ\2\nº\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\6\23trailing_stiffness\4\0ÄÄÄˇ\3\21hide_target_hack\1\fenabled\1\28distance_stop_animating\4\0ÄÄÄˇ\3\14normal_bg\f#000000\14stiffness\4ö≥ÊÃ\tô≥¶ˇ\3\nsetup\17smear_cursor\frequire\0", "config", "smear-cursor.nvim")
time([[Config for smear-cursor.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: no-neck-pain.nvim
time([[Config for no-neck-pain.nvim]], true)
try_loadstring("\27LJ\2\nI\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\nwidth\3x\nsetup\17no-neck-pain\frequire\0", "config", "no-neck-pain.nvim")
time([[Config for no-neck-pain.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-treesitter ]]
vim.cmd [[ packadd nvim-treesitter-textobjects ]]
time([[Sequenced loading]], false)

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
