-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- color scheme
  use 'folke/tokyonight.nvim'

  -- intellisense
  use {'neoclide/coc.nvim', branch = 'release'}

  -- language-specific plugins
  use 'tpope/vim-liquid'          -- shopify 
  use 'pangloss/vim-javascript'   -- js
  use 'MaxMEllon/vim-jsx-pretty'  -- jsx (next, react, preact)

  -- file explorer
  vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- using ubuntu nerd font
      "MunifTanjim/nui.nvim",
    },
    config = function ()
      require("neo-tree").setup({
        window = {
          mapping_options = {
            noremap = true,
            nowait = true
          },
          mappings = {
            ["l"] = "open",
            ["s"] = "open_vsplit",
            ["i"] = "open_split"
          }
        }
      })
    end 
  }
end)
