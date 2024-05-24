vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) 
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>/", ":'<,'>s%^%//<CR>")
vim.keymap.set("n", "<leader>cf", "oconst functionName = async (params) => {<CR>} <ESC>")
vim.keymap.set("n", "<leader>tc", "otry{<CR>}<ESC>acatch(e){<CR>}<ESC>Othrow new Error(e)")
vim.keymap.set("n", "<leader>if", "oif(condition){<CR>}")
vim.keymap.set("n", "<leader>tne", "othrow new Error('')<ESC>")
vim.keymap.set('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})

