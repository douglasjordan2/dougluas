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
--  use {
--    'nvim-treesitter/nvim-treesitter',
--    run = ':TSUpdate',
--    config = function()
--      require'nvim-treesitter.configs'.setup {
--        highlight = {
--          enable = true,
--        }
--      }
--    end,
--  }

  -- blankline indent
  use "lukas-reineke/indent-blankline.nvim"

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

  -- intellisense
  use {'neoclide/coc.nvim', branch = 'release'}
--  use {
--    'neovim/nvim-lspconfig',
--    config = function () 
--      -- Mappings.
--      -- See `:help vim.diagnostic.*` for documentation on any of the below functions
--      local opts = { noremap=true, silent=true }
--      vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
--      vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
--      vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
--
--      -- Use an on_attach function to only map the following keys
--      -- after the language server attaches to the current buffer
--      local on_attach = function(client, bufnr)
--        -- Enable completion triggered by <c-x><c-o>
--        vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
--
--        -- Mappings.
--        -- See `:help vim.lsp.*` for documentation on any of the below functions
--        local bufopts = { noremap=true, silent=true, buffer=bufnr }
--        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
--        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
--        vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
--        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
--        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
--        vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
--        vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
--        vim.keymap.set('n', '<space>wl', function()
--          print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
--        end, bufopts)
--        vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
--        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
--        vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
--        vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
--        vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
--      end
--
--      local lsp_flags = {
--        -- This is the default in Nvim 0.7+
--        debounce_text_changes = 150,
--      }
--      require('lspconfig')['pyright'].setup{
--        on_attach = on_attach,
--        flags = lsp_flags,
--      }
--      require('lspconfig')['tsserver'].setup{
--        on_attach = on_attach,
--        flags = lsp_flags,
--      }
--      require('lspconfig')['rust_analyzer'].setup{
--        on_attach = on_attach,
--        flags = lsp_flags,
--        -- Server-specific settings...
--        settings = {
--          ["rust-analyzer"] = {}
--        }
--      }
--    end
--  }
--  use {
--    'hrsh7th/nvim-cmp',
--    requires = {
--      'hrsh7th/cmp-nvim-lsp', -- LSP source
--      'saadparwaiz1/cmp_luasnip' -- Snippets
--    },
--    config = function ()
--      -- Add additional capabilities supported by nvim-cmp
--      local capabilities = vim.lsp.protocol.make_client_capabilities()
--      capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
--
--      local lspconfig = require('lspconfig')
--
--      -- Enable some language servers with the additional completion capabilities offered by nvim-cmp
--      local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver' }
--      for _, lsp in ipairs(servers) do
--        lspconfig[lsp].setup {
--          -- on_attach = my_custom_on_attach,
--          capabilities = capabilities,
--        }
--      end
--
--      -- luasnip setup
--      local luasnip = require 'luasnip'
--
--      -- nvim-cmp setup
--      local cmp = require 'cmp'
--      cmp.setup {
--        snippet = {
--          expand = function(args)
--            luasnip.lsp_expand(args.body)
--          end,
--        },
--        mapping = cmp.mapping.preset.insert({
--          ['<C-d>'] = cmp.mapping.scroll_docs(-4),
--          ['<C-f>'] = cmp.mapping.scroll_docs(4),
--          ['<C-Space>'] = cmp.mapping.complete(),
--          ['<CR>'] = cmp.mapping.confirm {
--            behavior = cmp.ConfirmBehavior.Replace,
--            select = true,
--          },
--          ['<Tab>'] = cmp.mapping(function(fallback)
--            if cmp.visible() then
--              cmp.select_next_item()
--            elseif luasnip.expand_or_jumpable() then
--              luasnip.expand_or_jump()
--            else
--              fallback()
--            end
--          end, { 'i', 's' }),
--          ['<S-Tab>'] = cmp.mapping(function(fallback)
--            if cmp.visible() then
--              cmp.select_prev_item()
--            elseif luasnip.jumpable(-1) then
--              luasnip.jump(-1)
--            else
--              fallback()
--            end
--          end, { 'i', 's' }),
--        }),
--        sources = {
--          { name = 'nvim_lsp' },
--          { name = 'luasnip' },
--        },
--      }
--    end
--  }
--  use 'L3MON4D3/LuaSnip'

--  use {
--    'steelsojka/pears.nvim',
--    config = function ()
--      require'pears'.setup()
--    end
--  }

  -- emmet
--  use 'mattn/emmet-vim'
  use { 
    'nguyenvukhang/nvim-toggler',
    config = function ()
      require('nvim-toggler').setup({
        inverses = {
          ['next'] = 'previous',
          ['class'] = 'function',
          ['height'] = 'width',
          ['justify-content'] = 'align-items',
          ['top'] = 'bottom',
          ['script_tag'] = 'stylesheet_tag',
          ['red'] = 'blue',
          ['add'] = 'remove',
          ['plus'] = 'minus',
          ['black'] = 'white',
          ['none'] = 'block',
          ['first'] = 'last',
          ['desktop-only'] = 'mobile-only',
          ['green'] = 'orange',
          ['margin'] = 'padding',
          ['tablet'] = 'mobile',
          ['in'] = 'out',
          ['section'] = 'block'
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
  use {
      'prettier/vim-prettier',
      run = 'yarn install',
      ft = {
        'javascript', 
        'typescript', 
        'css', 
        'less', 
        'scss', 
        'graphql', 
        'markdown', 
        'vue', 
        'html'
      }
  }
  

end)
