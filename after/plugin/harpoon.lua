local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>h", ui.toggle_quick_menu)
vim.keymap.set("n", "<leader>hs", mark.add_file)

for i=1,10 do
  vim.keymap.set("n", "<leader>h"..i, function() ui.nav_file(i) end)
end
