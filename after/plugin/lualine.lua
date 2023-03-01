local lualine = require('lualine')
local custom_ppc_light = require('lualine.themes.papercolor_light')

custom_ppc_light.insert.a.bg = "#097969"
custom_ppc_light.insert.a.fg = "#FFFFFF"

lualine.setup {
  options = {
    theme = custom_ppc_light
  }
}
