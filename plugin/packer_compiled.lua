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
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\2�\1\0\0\4\0\n\0\r6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\b\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2=\2\t\1B\0\2\1K\0\1\0\vwindow\1\0\0\rmappings\1\0\3\6s\16open_vsplit\6l\topen\6i\15open_split\20mapping_options\1\0\0\1\0\2\vnowait\2\fnoremap\2\nsetup\rneo-tree\frequire\0" },
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
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
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-javascript"] = {
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/vim-javascript",
    url = "https://github.com/pangloss/vim-javascript"
  },
  ["vim-jsx-pretty"] = {
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty",
    url = "https://github.com/MaxMEllon/vim-jsx-pretty"
  },
  ["vim-liquid"] = {
    loaded = true,
    path = "/home/douglasjordan/.local/share/nvim/site/pack/packer/start/vim-liquid",
    url = "https://github.com/tpope/vim-liquid"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\2�\1\0\0\4\0\n\0\r6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\b\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2=\2\t\1B\0\2\1K\0\1\0\vwindow\1\0\0\rmappings\1\0\3\6s\16open_vsplit\6l\topen\6i\15open_split\20mapping_options\1\0\0\1\0\2\vnowait\2\fnoremap\2\nsetup\rneo-tree\frequire\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
