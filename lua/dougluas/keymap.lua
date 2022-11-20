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
map('i', '<C-c>', '<ESC>')  -------------------------------------------------------  escape with CTRL+C

-- tabs
map('n', '<leader>pt', 'gT')  -----------------------------------------------------  previous tab
map('n', '<leader>nt', 'gt')  -----------------------------------------------------  next tab

-- file exporer
map('n', '<leader>fe', ':Neotree filesystem reveal right<CR>')  -------------------  open file explorer
map('n', '<leader>fc', ':Neotree close<CR>')  -------------------------------------  close file explorer
map('n', '<leader>t', ':Telescope<CR>')  ------------------------------------------  open telescope
map('n', '<leader>ff', ':Telescope live_grep<CR>')  -------------------------------  fuzzy find
map('n', '<leader>b', ':Telescope buffers<CR>')  ----------------------------------  buffers

-- open windows with CTRL + arrow keys
map('n', '<leader><down>', '<C-w>s')  --------------------------------------------  open new window below
map('n', '<leader><right>', '<C-w>v')  --------------------------------------------------  open new window right

-- move around splits using arrow keys
map('n', '<left>', '<C-w>h')  -----------------------------------------------------  move to the next window on the left
map('n', '<right>', '<C-w>l')  ----------------------------------------------------  move to the next window on the right
map('n', '<up>', '<C-w>k')  -------------------------------------------------------  move to the next window above
map('n', '<down>', '<C-w>j')  -----------------------------------------------------  move to the next window below

-- change split orientation and size
map('n', '<leader>wh', '<C-w>t<C-w>K')  -------------------------------------------  change vertical to horizontal
map('n', '<leader>wv', '<C-w>t<C-w>H')  -------------------------------------------  change horizontal to vertical
map('n', '<leader>=', '<C-w>=')  --------------------------------------------------  even window sizes

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

-- terminal mappings
map('n', '<leader>;', ':bo sp<CR>:resize 10<CR>:term<CR>i')  ----------------------  opens a terminal at the bottom of all windows
vim.cmd([[ autocmd TermClose * execute "bdelete! " . expand("<abuf>") ]])  --------  closes the terminal without showing process exited and requiring <CR>

-- prettier
map('n', '<leader>p', ':Prettier<CR>')  -------------------------------------------  format current file

-- move around a bit easier
map('n', '<leader>h', '10h<CR>')  ------------------------------------------------  jump left 10 line% endcomment %s 
map('n', '<leader>j', '10j<CR>')  ------------------------------------------------  jump up 10 lines
map('n', '<leader>k', '10k<CR>')  ------------------------------------------------  jump down 10 lines
map('n', '<leader>l', '10l<CR>')  ------------------------------------------------  jump right 10 lines
map('n', '<leader><leader>h', '100h<CR>')  ---------------------------------------  jump left 100 lines
map('n', '<leader><leader>j', '100j<CR>')  ---------------------------------------  jump up 100 lines
map('n', '<leader><leader>k', '100k<CR>')  ---------------------------------------  jump down 100 lines
map('n', '<leader><leader>l', '100l<CR>')  ---------------------------------------  jump right 100 lines

-- emmets (so to speak)
map('n', '<leader>/', '0i// <ESC>j0')  -------------------------------------------  javascript comment
map('n', '<leader>d/', '0xxxj0')  ------------------------------------------------  delete js commend
map('n', '<leader>l', '0v$di{% comment %$p$a{% endcomment %')  ----------  liquid comment
map('n', '<leader>dl', '0v%d$v%dj0')  --------------------------------------------  delete liquid comment

-- autocomplete
vim.cmd([[
    inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                                \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
]])  ----------------------------------------------------------------------------  confirm selection with ENTER

-- reload config
map('n', '<leader>rl', '<cmd>lua ReloadConfig()<CR>')
