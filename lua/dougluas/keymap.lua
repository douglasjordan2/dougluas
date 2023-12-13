local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- timeout
vim.opt.timeoutlen = 300

-- map leader
vim.g.mapleader = " "  ------------------------------------------------------------  set leader to SPACE
map('i', '<C-c>', '<ESC>')  -------------------------------------------------------  escape insert mode with CTRL+C

-- tabs
map('n', '<leader>pt', 'gT')  -----------------------------------------------------  previous tab
map('n', '<leader>nt', 'gt')  -----------------------------------------------------  next tab

-- file exporer
map('n', '<leader>t', ':Telescope<CR>')  ------------------------------------------  open telescope
map('n', '<leader>pv', ':Neotree filesystem reveal right<CR>')  -----------------------  open neotree

-- open windows with CTRL + arrow keys
map('n', '<leader><down>', '<C-w>s')   -------------------------------------------  open new window below
map('n', '<leader><right>', '<C-w>v')  -------------------------------------------  open new window right

-- move around splits using arrow keys
map('n', '<left>', '<C-w>h')  -----------------------------------------------------  move to the next window on the left
map('n', '<right>', '<C-w>l')  ----------------------------------------------------  move to the next window on the right
map('n', '<up>', '<C-w>k')  -------------------------------------------------------  move to the next window above
map('n', '<down>', '<C-w>j')  -----------------------------------------------------  move to the next window below

-- change split orientation and size
map('n', '<leader>wh', '<C-w>t<C-w>K')  -------------------------------------------  change vertical to horizontal
map('n', '<leader>wv', '<C-w>t<C-w>H')  -------------------------------------------  change horizontal to vertical
map('n', '<leader>=', '<C-w>=')  --------------------------------------------------  even window sizes

-- cool things with text
map("v", "J", ":m '>+1<CR>gv=gv")  ------------------------------------------------  move all highlighted text up
map("v", "K", ":m '<-2<CR>gv=gv")  ------------------------------------------------  move all highlighted text down

-- cursor sanity
map("n", "J", "mbJ`b")  -----------------------------------------------------------  keep cursor in same place when combining lines with J
map("n", "<C-u>", "<C-u>zz")  -----------------------------------------------------  jump half page up and keep cursor in center
map("n", "<C-d>", "<C-d>zz")  -----------------------------------------------------  jump half page down and keep cursor in center
map("n", "n", "nzzzv")  -----------------------------------------------------------  keep search selection in center of screen - next
map("n", "N", "Nzzzv")  -----------------------------------------------------------  keep search selection in center of screen - previous

-- visual editor commands
map('n', '<leader>c', ':noh<CR>')  ------------------------------------------------  clear highlighting
map('n', '<leader><Tab>', 'ddO')  -------------------------------------------------  fix indent when at first char of new line betweeen brackets (etc)

-- file commands
map('n', '<leader>s', ':w<CR>')  --------------------------------------------------  save
map('n', '<leader>sa', ':wa<CR>')  ------------------------------------------------  save all
map('n', '<leader>q', ':q<CR>')  --------------------------------------------------  quit
map('n', '<leader>qq', ':qa<CR>')  ------------------------------------------------  quit all
map('n', '<leader>sqq', ':wqa<CR>')  ----------------------------------------------  save all and quit
map('n', '<leader>r', ':so %<CR>')  -----------------------------------------------  source
map('n', '<leader>p', ":Prettier")  -----------------------------------------------  format file

-- terminal mappings
map('n', '<leader>;', ':bo sp<CR>:resize 10<CR>:term<CR>i')  ----------------------  opens a terminal at the bottom of all windows
vim.cmd([[ autocmd TermClose * execute "bdelete! " . expand("<abuf>") ]])  --------  closes the terminal without showing process exited and requiring <CR>
