local theme = require("material")

vim.g.material_style = "deep ocean"

theme.setup {
	disable = {
		background = true,
	}
}

-- Enable the colorscheme
vim.cmd 'colorscheme material'
