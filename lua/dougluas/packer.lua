vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- color scheme
  use {
    'folke/tokyonight.nvim',
    config = function ()
      require('tokyonight').setup({
        transparent = true
      })
    end
  }

  -- intellisense
  use {'neoclide/coc.nvim', branch = 'release'}  --  plugins: coc-pairs, coc-json, coc-css, coc-highlight

  -- emmet
  use 'mattn/emmet-vim'

  -- language-specific plugins
  use 'tpope/vim-liquid'  -------------------------  shopify 
--use 'pangloss/vim-javascript'   -----------------  js
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

  vim.cmd("autocmd Colorscheme * highlight NvimTreeNormal guibg=none guifg=#9da5b3")

  -- fuzzy finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { 
      {'nvim-lua/plenary.nvim'},
    }
  }

  -- prettier
  use('neovim/nvim-lspconfig')
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')

  -- color highlighting
  use {
    'RRethy/vim-hexokinase',
    run = 'make hexokinase',
    cmd = {'HexokinaseToggle'},
    config = function()
        vim.g.Hexokinase_highlighters = {'backgroundfull'}
        vim.g.Hexokinase_optInPatterns = {
            'full_hex', 'rgb', 'rgba', 'hsl', 'hsla'
        }
    end
  }
end)
