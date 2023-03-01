-- Telescope
local telescope = require('telescope')

telescope.setup {
  defaults = {
    initial_mode = "normal"
  },
  extensions = {
    file_browser = {
      theme = "ivy",
      hijack_netrw = true,
      hidden = false
    }
  }
}

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- File Browser
telescope.load_extension "file_browser"
vim.keymap.set('n', '<space>pv', ':Telescope file_browser<CR>')
