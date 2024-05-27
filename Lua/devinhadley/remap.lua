vim.g.mapleader = " "

-- Project View
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Buffer Del 

-- Exit from insert mode by Esc in Terminal
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]])

-- Delete buffers with <leader> bd
vim.keymap.set("n", "<leader>bd", function() vim.cmd("bdelete!") end)
