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
