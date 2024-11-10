require('telescope').setup{
  defaults = {
    prompt_prefix = "🔍 ",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
  },
  pickers = {
    find_files = {
      theme = "dropdown", -- Example: using a dropdown theme for find_files
    },
  },
}

vim.api.nvim_set_keymap('n', '<leader>t', ':Telescope find_files<CR>', 
{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tg', ':Telescope live_grep<CR>', 
{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tb', ':Telescope buffers<CR>', 
{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>th', ':Telescope help_tags<CR>', 
{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':Telescope close<CR>', 
{ noremap = true, silent = true })

