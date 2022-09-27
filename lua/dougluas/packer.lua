vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- status line
  use {
    'nvim-lualine/lualine.nvim',
    config = function ()
      require'lualine'.setup{}
    end
  }

  -- windows
  use { 
    "anuvyklack/windows.nvim",
    requires = {
      "anuvyklack/middleclass",
      "anuvyklack/animation.nvim"
    },
    config = function()
      vim.o.winwidth = 10
      vim.o.winminwidth = 10
      vim.o.equalalways = false
      vim.keymap.set({ 'n' }, '<leader>z', '<Cmd>WindowsMaximize<CR>')
      require('windows').setup()
    end
  }

  -- color highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require'nvim-treesitter.configs'.setup {
        highlight = {
          enable = true,
        }
      }
    end,
  }

  -- color scheme
  use({
    'projekt0n/github-nvim-theme',
    config = function()
      require('github-theme').setup({
        transparent = true,
        theme_style = 'dark',
        function_style = 'italic'
      })
    end
  })

  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function ()
      vim.opt.termguicolors = true

      vim.opt.list = true
      vim.opt.listchars:append "space: "
      vim.opt.listchars:append "eol:🂡"

      require("indent_blankline").setup {
        space_char_blankline = " ",
      }
    end
  }

  -- intellisense
  use {
    'neovim/nvim-lspconfig',
    config = function () 
      require('dougluas.config.lsp')
    end
  }
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp', -- LSP source
      'saadparwaiz1/cmp_luasnip' -- Snippets
    },
    config = function ()
      require('dougluas.config.nvim-cmp')
    end
  }
  use 'L3MON4D3/LuaSnip'

  use {
    'steelsojka/pears.nvim',
    config = function ()
      require'pears'.setup()
    end
  }

  -- emmet
  use 'mattn/emmet-vim'
  use { 
    'nguyenvukhang/nvim-toggler',
    config = function ()
      require('nvim-toggler').setup({
        inverses = {
          ['next'] = 'previous',
          ['class'] = 'function'
        }
      })
      vim.keymap.set({ 'n', 'v' }, '<leader>cl', require('nvim-toggler').toggle)
    end
  } -- invert words

  -- language-specific plugins
  use 'tpope/vim-liquid'  -------------------------  shopify 
  use 'pangloss/vim-javascript'   -----------------  js
  use 'mxw/vim-jsx'  -----------------------------------
  use 'MaxMEllon/vim-jsx-pretty'  ----------------------  
  use 'neoclide/vim-jsx-improve'  -----------------  jsx
  use 'leafgarland/typescript-vim'  ---------------  ts
  use 'ianks/vim-tsx'  ----------------------------------
  use 'peitalin/vim-jsx-typescript' ---------------  tsx

  -- file explorer
  vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

  use {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    requires = { 
      'nvim-lua/plenary.nvim',
      'kyazdani42/nvim-web-devicons',  --  using ubuntu nerd font
      'MunifTanjim/nui.nvim',
    },
    config = function ()
      require('neo-tree').setup({
        event_handlers = { 
          { 
            event = 'vim_buffer_enter', 
            handler = function() 
              if vim.bo.filetype == 'neo-tree' then 
                vim.cmd('set relativenumber') 
              end 
            end, 
          },
        },
        window = {
          position = 'right',
          mapping_options = {
            noremap = true,
            nowait = true
          },
          mappings = {
            ['l'] = 'open',
            ['s'] = 'open_vsplit',
            ['i'] = 'open_split'
          }
        }
      })

      vim.cmd[[hi NvimTreeNormal guibg=NONE ctermbg=NONE]]
    end 
  }

  use({
    "xiyaowong/nvim-transparent",
    config = function()
      require("transparent").setup {
        enable = true,
      }
    end
  })

  -- fuzzy finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { 
      {'nvim-lua/plenary.nvim'},
    },
    config = function ()
      require'telescope'.setup {
        defaults = {
          initial_mode = "normal"
        }
      }
    end
  }

  -- prettier
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')

end)
