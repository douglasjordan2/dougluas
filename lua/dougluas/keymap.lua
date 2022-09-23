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

-- file exporer
map('n', '<leader>fe', ':Neotree filesystem reveal right<CR>')  -------------------  open file explorer
map('n', '<leader>fc', ':Neotree close<CR>')  -------------------------------------  close file explorer
map('n', '<leader>t', ':Telescope<CR>')  ------------------------------------------  open telescope
map('n', '<leader>tg', ':Telescope live_grep<CR>')  -------------------------------  grep

-- open windows with CTRL + arrow keys
map('n', '<leader><down>', '<C-w>s')  ---------------------------------------------------  open new window below
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
map('n', '<leader><leader>', 'ciw')  ----------------------------------------------  replace word regardless of char position

-- file commands
map('n', '<leader>s', ':w<CR>')  --------------------------------------------------  save
map('n', '<leader>sa', ':wa<CR>')  ------------------------------------------------  save all
map('n', '<leader>q', ':q<CR>')  --------------------------------------------------  quit
map('n', '<leader>qa', ':qa<CR>')  ------------------------------------------------  quit all
map('n', '<leader>sqa', ':wqa<CR>')  ----------------------------------------------  save all and quit
map('n', '<leader>r', ':so %<CR>')  -----------------------------------------------  source

-- terminal mappings
map('n', '<leader>;', ':bo sp<CR>:resize 10<CR>:term<CR>i')  ----------------------  opens a terminal at the bottom of all windows
vim.cmd([[ autocmd TermClose * execute "bdelete! " . expand("<abuf>") ]])  --------  closes the terminal without showing process exited and requiring <CR>

-- prettier
map('n', '<leader>p', ':Prettier<CR>')  -------------------------------------------  format current file

-- autocomplete
vim.cmd([[
    inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                                \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
]])  -----------------------------------------------------------------------------  confirms selection with ENTER

-- move around a bit easier
map('n', '<leader>h', '10h<CR>')  ------------------------------------------------  jump left 10 lines 
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
map('n', '<leader>l', '0i{% comment %}<ESC>$a{% endcomment %}<ESC>j0')  ----------  liquid comment
map('n', '<leader>dl', '0v%d$v%dj0')  --------------------------------------------  delete liquid comment


vim.cmd[[hi NvimTreeNormal guibg=NONE ctermbg=NONE]]
