local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	PackerBootstrap = vim.fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
end

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")
	use("editorconfig/editorconfig-vim")

	use({
		"marko-cerovac/material.nvim",
		config = function()
			require("material").setup()
		end,
	})

	use({
		"kyazdani42/nvim-web-devicons",
		config = function()
			require("nvim-web-devicons").setup()
		end,
	})

	use({
		"kyazdani42/nvim-tree.lua",
		require = "kyazdani42/nvim-web-devicons",
		config = function()
			require("ui.tree")
		end,
	})

	use({
		"akinsho/toggleterm.nvim",
		config = function()
			require("toggleterm").setup({})
		end,
	})

	use({
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("ui.treesitter")
		end,
	})

	use({
		"nvim-lualine/lualine.nvim",
		requires = {
			"kyazdani42/nvim-web-devicons",
			opt = true,
		},
		config = function()
			require("ui.statusbar")
		end,
	})

	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup()
		end,
	})

	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
		config = function()
			require("telescope").setup()
		end,
	})

	use({
		"lewis6991/gitsigns.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("gitsigns").setup()
		end,
	})

	use({
		"phaazon/hop.nvim",
		branch = "v1",
		config = function()
			require("hop").setup({
				keys = "etovxqpdygfblzhckisuran",
			})
		end,
	})

	use({
		"neovim/nvim-lspconfig",
		config = function()
			require("engine.lsp")
		end,
	})

	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
		config = function()
			require("ui.widgets")
		end,
	})

	use({
		"rafamadriz/friendly-snippets",
		event = "InsertEnter",
	})

	use({
		"L3MON4D3/LuaSnip",
		wants = "friendly-snippets",
		after = "nvim-cmp",
		config = function()
			require("luasnip").config.set_config({ history = true, updateevents = "TextChanged,TextChangedI" })
			require("luasnip/loaders/from_vscode").load()
		end,
	})

	use("hrsh7th/cmp-nvim-lsp")
	use({ "hrsh7th/cmp-path", after = "cmp-nvim-lsp" })
	use({
		"hrsh7th/nvim-cmp",
		config = function()
			require("engine.completion")
		end,
	})

	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})

	use({
		"akinsho/bufferline.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("ui.tabs")
		end,
	})

	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end,
	})

	use({
		"mhartington/formatter.nvim",
		config = function()
			require("engine.format")
		end,
	})

	if PackerBootstrap then
		require("packer").sync()
	end
end)
