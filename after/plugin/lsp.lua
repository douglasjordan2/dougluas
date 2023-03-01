local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
  'tsserver',
  'eslint'
})

local cmp = require('cmp')
local cmp_select = lsp.defaults.cmp_mappings({
  ['<C-x>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-a>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ['<C-Space>'] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

local lspconfig = require('lspconfig')
local configs = require('lspconfig/configs')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.emmet_ls.setup({
  -- on_attach = on_attach
  capabilities = capabilities,
  filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'liquid' },
  init_options = {
    html = {
      options = {
        ["bem.enabled"] = true
      }
    }
  }
})

lsp.setup()

vim.diagnostic.open_float()

vim.diagnostic.config({
  virtual_text = true,
  float = {
    source = 'always',
    border = border
  }
})

