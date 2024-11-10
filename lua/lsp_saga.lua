local saga = require('lspsaga')

saga.setup({
  -- Key mappings for lspsaga features
  finder_action_keys = {
    open = '<CR>',
    vsplit = '<C-v>',
    split = '<C-x>',
  },
  definition_action_keys = {
    edit = '<CR>',
    vsplit = '<C-v>',
    split = '<C-x>',
  },
})
