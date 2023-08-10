require('telescope').setup()
require('telescope').load_extension('undo')
require('telescope').load_extension('harpoon')
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>tb', builtin.buffers, {})

