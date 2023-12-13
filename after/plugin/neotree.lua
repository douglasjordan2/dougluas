require'neo-tree'.setup {
  name = {
    use_git_status_colors = true
  },
  window = {
    position = "right"
  },
  mappings = {
    ["l"] = "open",
    ["h"] = "open_vsplit",
  },
  filesystem = {
    filtered_items = {
      visible = true,
      hide_dotfiles = false
    }
  },
  event_handlers = {
    {
      event = "vim_buffer_enter",
      handler = function()
          if vim.bo.filetype == "neo-tree" then
              vim.cmd("setlocal number")
              vim.cmd("setlocal relativenumber")
          end
      end,
    },
  }
}
