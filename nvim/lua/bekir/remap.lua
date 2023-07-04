vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) 
vim.api.nvim_set_keymap('n', '<leader>b', ':NvimTreeToggle<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeFocus<CR>', {noremap = true})

