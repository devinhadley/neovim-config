-- Enable animations.
require('mini.animate').setup()

function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", {bg="none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg="none"})

	vim.g.airline_theme = 'base16_material_darker'

end

ColorMyPencils()

vim.cmd("AirlineTheme bubblegum")

