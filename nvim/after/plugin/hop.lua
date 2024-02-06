local hop = require('hop')

vim.keymap.set('n', '<leader>f', function()
  hop.hint_words()
end)
