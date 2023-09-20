vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) 
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.api.nvim_set_keymap('n', '<leader>b', ':NvimTreeToggle<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeFocus<CR>', {noremap = true})
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

