vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Color scheme and syntax
  use "catppuccin/nvim"
  use 'xiyaowong/nvim-transparent'
  use {
    'nvim-treesitter/nvim-treesitter',
    { run = ':TSUpdate' }
  }
  use "lukas-reineke/indent-blankline.nvim"

  -- Telescope and friends
  use "nvim-telescope/telescope.nvim"
  use 'theprimeagen/harpoon'
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    }
  }

  -- Beautify Editor
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Code completion and formatting
  use 'steelsojka/pears.nvim'
  use {
    'prettier/vim-prettier',
    run = 'yarn install',
    ft = { "javascript", "typescript", "typescriptreact", "javascriptreact", "css", "less", "scss", "json", "markdown" },
  }
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  
  -- LSP and AI
  use 'Exafunction/codeium.vim'
  use('neovim/nvim-lspconfig')
  use 'kabouzeid/nvim-lspinstall'
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')

  -- language extensions
  use 'tpope/vim-liquid'
  use 'pangloss/vim-javascript'
  use 'leafgarland/typescript-vim'
  use 'peitalin/vim-jsx-typescript'
  use 'MaxMEllon/vim-jsx-pretty'
  use 'neoclide/vim-jsx-improve'

end)
