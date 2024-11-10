
local cmp = require('cmp')

cmp.setup({
  completion = {
    max_menu_width = 20,  -- Adjust the maximum width of the completion window
    max_item_count = 5,  -- Limit the number of items shown in the completion list
  },
  sources = {
    { name = 'nvim_lsp', max_item_count=7 },  -- LSP completion source
    { name = 'buffer' , max_item_count=7 },  -- Buffer completion
    { name = 'path' , max_item_count=7 },  -- File path completion
  },

  -- Key mappings for nvim-cmp
  mapping = {
    ['<C-e>'] = cmp.mapping.close(),
    ['<C-Space>'] = cmp.mapping.confirm({ select = true }),
    ['<C-j>'] = cmp.mapping.select_next_item(),
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    ['<C-l>'] = cmp.mapping.scroll_docs(4),
    ['<C-h>'] = cmp.mapping.scroll_docs(-4),
  },
})

