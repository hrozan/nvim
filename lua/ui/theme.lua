require("material").setup({
	contrast = {
		sidebars = true,
		floating_windows = true,
		popup_menu = true,
		non_current_windows = true,
	},
	italics = {
		comments = true,
		functions = true,
	},
	lualine_style = "stealth",
})

vim.g.material_style = "deep ocean"
vim.cmd("colorscheme material")
