local lspconfig = require('lspconfig')

-- Python (pyright)
lspconfig.pyright.setup{
    capabilities = require('cmp_nvim_lsp').default_capabilities(
    vim.lsp.protocol.make_client_capabilities())
}

-- Golang
lspconfig.gopls.setup{
    capabilities = require('cmp_nvim_lsp').default_capabilities(
    vim.lsp.protocol.make_client_capabilities())
}

-- Rust
lspconfig.rust_analyzer.setup{
    capabilities = require('cmp_nvim_lsp').default_capabilities(
    vim.lsp.protocol.make_client_capabilities())
}

-- OCaml
lspconfig.ocamllsp.setup{
    capabilities = require('cmp_nvim_lsp').default_capabilities(
    vim.lsp.protocol.make_client_capabilities())
}

-- Key mappings for LSP features
local opts = { noremap=true, silent=true }

-- Go to definition
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)

-- Show hover documentation
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)

-- Show function signature
vim.api.nvim_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)

-- Go to implementation (if available)
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)

-- Show references
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)

vim.diagnostic.config({
  virtual_text = false,  -- Disable virtual text
  signs = true,          -- Keep signs in the gutter
  underline = true,      -- Underline problematic code
  update_in_insert = false, -- Update diagnostics only in normal mode
  severity_sort = true,  -- Sort diagnostics by severity
})

vim.keymap.set("n", "gh", vim.diagnostic.open_float, 
  { noremap = true, silent = true })

