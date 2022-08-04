local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- set leader to SPACE
vim.g.mapleader = " "  ------------------------------------------------------------  map leader

-- file exporing
map('n', '<leader>fe', ':Neotree filesystem reveal right<CR>')  -------------------  open
map('n', '<leader>fc', ':Neotree close<CR>')  -------------------------------------  close
map('n', '<leader>t', ':Telescope<CR>')  ------------------------------------------  open telescope
map('n', '<leader>tg', ':Telescope live_grep<CR>')  -------------------------------  grep

-- open windows with CTRL + arrow keys
map('n', '<C-Down>', '<C-w>s')  ---------------------------------------------------  open new window below
map('n', '<C-Right>', '<C-w>v')  --------------------------------------------------  open new window right

-- move around splits using arrow keys
map('n', '<left>', '<C-w>h')  -----------------------------------------------------  move to the next window on the left
map('n', '<right>', '<C-w>l')  ----------------------------------------------------  move to the next window on the right
map('n', '<up>', '<C-w>k')  -------------------------------------------------------  move to the next window above
map('n', '<down>', '<C-w>j')  -----------------------------------------------------  move to the next window below

-- change split orientation
map('n', '<leader>wh', '<C-w>t<C-w>K')  -------------------------------------------  change vertical to horizontal
map('n', '<leader>wv', '<C-w>t<C-w>H')  -------------------------------------------  change horizontal to vertical

-- visual editor commands
map('n', '<leader>c', ':noh<CR>')  ------------------------------------------------  clear highlighting

-- file commands
map('n', '<leader>s', ':w<CR>')  --------------------------------------------------  save
map('n', '<leader>sa', ':wa<CR>')  ------------------------------------------------  save all
map('n', '<leader>q', ':q<CR>')  --------------------------------------------------  quit
map('n', '<leader>qa', ':qa<CR>')  ------------------------------------------------  quit all
map('n', '<leader>sqa', ':wqa<CR>')  ----------------------------------------------  save all and quit
map('n', '<leader>r', ':so %<CR>')  -----------------------------------------------  source

-- terminal mappings
map('n', '<leader>;', ':bo sp<CR>:resize 10<CR>:term<CR>i')  ----------------------  opens a terminal at the bottom of all windows

-- prettier
map('n', '<leader>p', ':Prettier<CR>')  -------------------------------------------  format current file
