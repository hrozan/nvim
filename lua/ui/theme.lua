local material = require("material")

material.setup({
	lualine_style = "stealth",
	contrast = {
		sidebars = true,
		floating_windows = true,
		popup_menu = true,
		non_current_windows = true,
	},
})

vim.g.material_style = "deep ocean"
vim.cmd("colorscheme material")
