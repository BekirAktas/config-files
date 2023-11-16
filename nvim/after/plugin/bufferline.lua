vim.opt.termguicolors = true
require("bufferline").setup{
options = {
    show_buffer_close_icons = false,
    show_close_icon = false,
    enforce_regular_tabs = true,
    offsets = {
      {
        filetype = 'NvimTree',
      },
    },
  },
}
vim.keymap.set('n', '<leader>pc', '<CMD>BufferLinePick<CR>')
vim.keymap.set('n', '<leader>w', '<CMD>BufferLinePickClose<CR>')
vim.keymap.set('n', '<S-l>', '<CMD>BufferLineCycleNext<CR>')
vim.keymap.set('n', '<S-h>', '<CMD>BufferLineCyclePrev<CR>')
vim.keymap.set('n', 'gs', '<CMD>BufferLineSortByDirectory<CR>')
vim.keymap.set('n', '<leader>jj', '<CMD>BufferLineCloseOthers<CR>')
vim.keymap.set('n', '<leader>1', '<Cmd>BufferLineGoToBuffer 1<CR>')
vim.keymap.set('n', '<leader>2', '<Cmd>BufferLineGoToBuffer 2<CR>')
vim.keymap.set('n', '<leader>3', '<Cmd>BufferLineGoToBuffer 3<CR>')
vim.keymap.set('n', '<leader>4', '<Cmd>BufferLineGoToBuffer 4<CR>')
vim.keymap.set('n', '<leader>5', '<Cmd>BufferLineGoToBuffer 5<CR>')
