local builtin = require('telescope.builtin')

-- Keymap to open file search : ThePrimeagen
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- Keymap to open git file search : ThePrimeagen
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- Keymap to open a grep search : ThePrimeagen
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
