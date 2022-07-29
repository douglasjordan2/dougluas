local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- set leader to SPACE 
vim.g.mapleader = " "

-- file exporer
map('n', '<leader>fe', ':Neotree filesystem reveal right<CR>')  -----------------  open
map('n', '<leader>fc', ':Neotree close<CR>') ------------------------------------  close

-- clear search highlighting
map('n', '<leader>c', ':noh<CR>')

-- change split orientation
map('n', '<leader>tk', '<C-w>t<C-w>K')  -----------------------------------------  change vertical to horizontal
map('n', '<leader>th', '<C-w>t<C-w>H')  -----------------------------------------  change horizontal to vertical

-- move around splits using arrow keys
map('n', '<left>', '<C-w>h')
map('n', '<down>', '<C-w>j')
map('n', '<up>', '<C-w>k')
map('n', '<right>', '<C-w>l')

-- open windows with CTRL + arrow keys
map('n', '<C-Down>', '<C-w>s')  --------------------------------------------------  open new window below
map('n', '<C-Right>', '<C-w>v')  -------------------------------------------------  open new window right

-- file commands
map('n', '<leader>s', ':w<CR>')  -------------------------------------------------- save
map('n', '<leader>r', ':so %<CR>')  ----------------------------------------------- source
map('n', '<leader>q', ':q<CR>')  -------------------------------------------------- quit

-- terminal mappings
map('n', '<leader>;', ':bo sp<CR>:resize 10<CR>:term<CR>i', { noremap = true })  -- open

-- code completion
map('i', '(', '()<left>')  -------------------------------------------------------  parentheses
map('i', '[', '[]<left>')  -------------------------------------------------------  brackets
map('i', '{', '{}<left>')  -------------------------------------------------------  braces
map('i', '{<CR>', '{<CR>}<ESC>O')  -----------------------------------------------  braces with proper newline if 'enter' is pressed
