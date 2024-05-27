-- Enable animations.
require('mini.animate').setup()


function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", {bg="none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg="none"})



end

ColorMyPencils()

vim.cmd("AirlineTheme bubblegum")

-- Adjust colorscheme for transparency
vim.api.nvim_create_autocmd('ColorScheme', {
  pattern = '*',
  callback = function()
    vim.cmd('highlight Normal ctermbg=none guibg=none')
    vim.cmd('highlight NormalNC ctermbg=none guibg=none')
  end
})

-- Set transparency for inactive windows
vim.api.nvim_create_autocmd('WinEnter', {
  pattern = '*',
  callback = function()
    vim.cmd('setlocal winhighlight=Normal:Normal,NormalNC:Normal')
  end
})

vim.api.nvim_create_autocmd('WinLeave', {
  pattern = '*',
  callback = function()
    vim.cmd('setlocal winhighlight=Normal:Normal,NormalNC:Normal')
  end
})

