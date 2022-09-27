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
local package_path_str = "/home/douglasjordan/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/douglasjordan/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/douglasjordan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/douglasjordan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/douglasjordan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  LuaSnip = {
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["animation.nvim"] = {
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/animation.nvim",
    url = "https://github.com/anuvyklack/animation.nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["github-nvim-theme"] = {
    config = { "\27LJ\2\2u\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\3\16transparent\2\19function_style\vitalic\16theme_style\tdark\nsetup\17github-theme\frequire\0" },
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/github-nvim-theme",
    url = "https://github.com/projekt0n/github-nvim-theme"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\2í\1\0\0\3\0\f\0\0296\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0006\0\0\0009\0\1\0009\0\4\0\18\1\0\0009\0\5\0'\2\6\0B\0\3\0016\0\0\0009\0\1\0009\0\4\0\18\1\0\0009\0\5\0'\2\a\0B\0\3\0016\0\b\0'\1\t\0B\0\2\0029\0\n\0005\1\v\0B\0\2\1K\0\1\0\1\0\1\25space_char_blankline\6 \nsetup\21indent_blankline\frequire\teol:\fspace: \vappend\14listchars\tlist\18termguicolors\bopt\bvim\0" },
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\0029\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  middleclass = {
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/middleclass",
    url = "https://github.com/anuvyklack/middleclass"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\2_\0\0\2\0\6\0\n6\0\0\0009\0\1\0009\0\2\0\a\0\3\0X\0\4€6\0\0\0009\0\4\0'\1\5\0B\0\2\1K\0\1\0\23set relativenumber\bcmd\rneo-tree\rfiletype\abo\bvimÌ\2\1\0\5\0\17\0\0236\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0004\2\3\0005\3\3\0003\4\4\0=\4\5\3>\3\1\2=\2\a\0015\2\b\0005\3\t\0=\3\n\0025\3\v\0=\3\f\2=\2\r\1B\0\2\0016\0\14\0009\0\15\0'\1\16\0B\0\2\1K\0\1\0.hi NvimTreeNormal guibg=NONE ctermbg=NONE\bcmd\bvim\vwindow\rmappings\1\0\3\6s\16open_vsplit\6l\topen\6i\15open_split\20mapping_options\1\0\2\vnowait\2\fnoremap\2\1\0\1\rposition\nright\19event_handlers\1\0\0\fhandler\0\1\0\1\nevent\21vim_buffer_enter\nsetup\rneo-tree\frequire\0" },
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\0028\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\29dougluas.config.nvim-cmp\frequire\0" },
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\0023\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\24dougluas.config.lsp\frequire\0" },
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-toggler"] = {
    config = { "\27LJ\2\2Ã\1\0\0\5\0\f\0\0196\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\0016\0\6\0009\0\a\0009\0\b\0005\1\t\0'\2\n\0006\3\0\0'\4\1\0B\3\2\0029\3\v\3B\0\4\1K\0\1\0\vtoggle\15<leader>cl\1\3\0\0\6n\6v\bset\vkeymap\bvim\rinverses\1\0\0\1\0\2\tnext\rprevious\nclass\rfunction\nsetup\17nvim-toggler\frequire\0" },
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/nvim-toggler",
    url = "https://github.com/nguyenvukhang/nvim-toggler"
  },
  ["nvim-transparent"] = {
    config = { "\27LJ\2\2H\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\1\venable\2\nsetup\16transparent\frequire\0" },
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/nvim-transparent",
    url = "https://github.com/xiyaowong/nvim-transparent"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\2i\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["pears.nvim"] = {
    config = { "\27LJ\2\0023\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\npears\frequire\0" },
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/pears.nvim",
    url = "https://github.com/steelsojka/pears.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["prettier.nvim"] = {
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/prettier.nvim",
    url = "https://github.com/MunifTanjim/prettier.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\2f\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\rdefaults\1\0\0\1\0\1\17initial_mode\vnormal\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["typescript-vim"] = {
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/typescript-vim",
    url = "https://github.com/leafgarland/typescript-vim"
  },
  ["vim-javascript"] = {
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/vim-javascript",
    url = "https://github.com/pangloss/vim-javascript"
  },
  ["vim-jsx"] = {
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/vim-jsx",
    url = "https://github.com/mxw/vim-jsx"
  },
  ["vim-jsx-improve"] = {
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/vim-jsx-improve",
    url = "https://github.com/neoclide/vim-jsx-improve"
  },
  ["vim-jsx-pretty"] = {
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty",
    url = "https://github.com/MaxMEllon/vim-jsx-pretty"
  },
  ["vim-jsx-typescript"] = {
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/vim-jsx-typescript",
    url = "https://github.com/peitalin/vim-jsx-typescript"
  },
  ["vim-liquid"] = {
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/vim-liquid",
    url = "https://github.com/tpope/vim-liquid"
  },
  ["vim-tsx"] = {
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/vim-tsx",
    url = "https://github.com/ianks/vim-tsx"
  },
  ["windows.nvim"] = {
    config = { "\27LJ\2\2Ü\1\0\0\4\0\r\0\0256\0\0\0009\0\1\0)\1\n\0=\1\2\0006\0\0\0009\0\1\0)\1\n\0=\1\3\0006\0\0\0009\0\1\0+\1\1\0=\1\4\0006\0\0\0009\0\5\0009\0\6\0005\1\a\0'\2\b\0'\3\t\0B\0\4\0016\0\n\0'\1\v\0B\0\2\0029\0\f\0B\0\1\1K\0\1\0\nsetup\fwindows\frequire\29<Cmd>WindowsMaximize<CR>\14<leader>z\1\2\0\0\6n\bset\vkeymap\16equalalways\16winminwidth\rwinwidth\6o\bvim\0" },
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/windows.nvim",
    url = "https://github.com/anuvyklack/windows.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-toggler
time([[Config for nvim-toggler]], true)
try_loadstring("\27LJ\2\2Ã\1\0\0\5\0\f\0\0196\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\0016\0\6\0009\0\a\0009\0\b\0005\1\t\0'\2\n\0006\3\0\0'\4\1\0B\3\2\0029\3\v\3B\0\4\1K\0\1\0\vtoggle\15<leader>cl\1\3\0\0\6n\6v\bset\vkeymap\bvim\rinverses\1\0\0\1\0\2\tnext\rprevious\nclass\rfunction\nsetup\17nvim-toggler\frequire\0", "config", "nvim-toggler")
time([[Config for nvim-toggler]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\2i\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\0028\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\29dougluas.config.nvim-cmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: github-nvim-theme
time([[Config for github-nvim-theme]], true)
try_loadstring("\27LJ\2\2u\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\3\16transparent\2\19function_style\vitalic\16theme_style\tdark\nsetup\17github-theme\frequire\0", "config", "github-nvim-theme")
time([[Config for github-nvim-theme]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\2í\1\0\0\3\0\f\0\0296\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0006\0\0\0009\0\1\0009\0\4\0\18\1\0\0009\0\5\0'\2\6\0B\0\3\0016\0\0\0009\0\1\0009\0\4\0\18\1\0\0009\0\5\0'\2\a\0B\0\3\0016\0\b\0'\1\t\0B\0\2\0029\0\n\0005\1\v\0B\0\2\1K\0\1\0\1\0\1\25space_char_blankline\6 \nsetup\21indent_blankline\frequire\teol:\fspace: \vappend\14listchars\tlist\18termguicolors\bopt\bvim\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\2_\0\0\2\0\6\0\n6\0\0\0009\0\1\0009\0\2\0\a\0\3\0X\0\4€6\0\0\0009\0\4\0'\1\5\0B\0\2\1K\0\1\0\23set relativenumber\bcmd\rneo-tree\rfiletype\abo\bvimÌ\2\1\0\5\0\17\0\0236\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0004\2\3\0005\3\3\0003\4\4\0=\4\5\3>\3\1\2=\2\a\0015\2\b\0005\3\t\0=\3\n\0025\3\v\0=\3\f\2=\2\r\1B\0\2\0016\0\14\0009\0\15\0'\1\16\0B\0\2\1K\0\1\0.hi NvimTreeNormal guibg=NONE ctermbg=NONE\bcmd\bvim\vwindow\rmappings\1\0\3\6s\16open_vsplit\6l\topen\6i\15open_split\20mapping_options\1\0\2\vnowait\2\fnoremap\2\1\0\1\rposition\nright\19event_handlers\1\0\0\fhandler\0\1\0\1\nevent\21vim_buffer_enter\nsetup\rneo-tree\frequire\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\0029\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: pears.nvim
time([[Config for pears.nvim]], true)
try_loadstring("\27LJ\2\0023\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\npears\frequire\0", "config", "pears.nvim")
time([[Config for pears.nvim]], false)
-- Config for: windows.nvim
time([[Config for windows.nvim]], true)
try_loadstring("\27LJ\2\2Ü\1\0\0\4\0\r\0\0256\0\0\0009\0\1\0)\1\n\0=\1\2\0006\0\0\0009\0\1\0)\1\n\0=\1\3\0006\0\0\0009\0\1\0+\1\1\0=\1\4\0006\0\0\0009\0\5\0009\0\6\0005\1\a\0'\2\b\0'\3\t\0B\0\4\0016\0\n\0'\1\v\0B\0\2\0029\0\f\0B\0\1\1K\0\1\0\nsetup\fwindows\frequire\29<Cmd>WindowsMaximize<CR>\14<leader>z\1\2\0\0\6n\bset\vkeymap\16equalalways\16winminwidth\rwinwidth\6o\bvim\0", "config", "windows.nvim")
time([[Config for windows.nvim]], false)
-- Config for: nvim-transparent
time([[Config for nvim-transparent]], true)
try_loadstring("\27LJ\2\2H\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\1\venable\2\nsetup\16transparent\frequire\0", "config", "nvim-transparent")
time([[Config for nvim-transparent]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\0023\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\24dougluas.config.lsp\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\2f\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\rdefaults\1\0\0\1\0\1\17initial_mode\vnormal\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)

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
