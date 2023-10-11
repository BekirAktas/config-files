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
vim.keymap.set('n', '<leader>11', '<Cmd>BufferLineGoToBuffer 1<CR>')
vim.keymap.set('n', '<leader>22', '<Cmd>BufferLineGoToBuffer 2<CR>')
vim.keymap.set('n', '<leader>33', '<Cmd>BufferLineGoToBuffer 3<CR>')
vim.keymap.set('n', '<leader>44', '<Cmd>BufferLineGoToBuffer 4<CR>')
vim.keymap.set('n', '<leader>55', '<Cmd>BufferLineGoToBuffer 5<CR>')
vim.keymap.set('n', '<leader>66', '<Cmd>BufferLineGoToBuffer 6<CR>')
vim.keymap.set('n', '<leader>77', '<Cmd>BufferLineGoToBuffer 7<CR>')
vim.keymap.set('n', '<leader>88', '<Cmd>BufferLineGoToBuffer 8<CR>')
vim.keymap.set('n', '<leader>99', '<Cmd>BufferLineGoToBuffer 9<CR>')
