local builtin = require('telescope.builtin')
local keymap = vim.keymap
local telescope = require('telescope')
local actions = require('telescope.actions')
local map_opts = { silent = true }

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', 'C-p', builtin.git_files, {})
-- vim.keymap.set('n', '<leader>ps', function()
-- 	builtin.grep_string({ search = vim.fn.input("Grep > ") });
-- end)
keymap.set('n', '<leader>ps', builtin.live_grep, map_opts)
keymap.set('n', '<C-b>', builtin.buffers, map_opts)

telescope.setup({
  defaults = {
    layout_strategy = 'vertical',
    layout_config = {
      vertical = {
        prompt_position = 'top',
        preview_cutoff = 10,
        width = 0.65,
        mirror = true,
      },
    },
    mappings = {
      i = {
        ['<C-j>'] = actions.move_selection_next,
        ['<C-k>'] = actions.move_selection_previous,
        ['<Esc>'] = actions.close,
      },
    },
    sorting_strategy = 'ascending',
  }
})
