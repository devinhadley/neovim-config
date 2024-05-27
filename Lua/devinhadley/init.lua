require("devinhadley.remap")
require("devinhadley.packer")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"


if vim.fn.has('wsl') == 1 then
    vim.api.nvim_create_autocmd('TextYankPost', {
        group = vim.api.nvim_create_augroup('Yank', { clear = true }),
        callback = function()
            vim.fn.system('clip.exe', vim.fn.getreg('"'))
        end,
    })
end
