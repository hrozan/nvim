require("nvim-tree").setup({
	actions = {
		open_file = {
			window_picker = {
				exclude = {
					filetype = { "notify", "packer", "qf" },
					buftype = { "terminal" },
				},
			},
		},
	},
	filters = {
		dotfiles = false,
	},
	ignore_ft_on_setup = { "dashboard" },
	open_on_tab = false,
	update_cwd = true,
	update_focused_file = {
		enable = true,
		update_cwd = false,
	},
	view = {
		width = 45,
		side = "right",
	},
})
