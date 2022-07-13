require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")
	use("editorconfig/editorconfig-vim")

	use({
		"marko-cerovac/material.nvim",
		config = function()
			require("material").setup({
				disable = {
					background = true,
				},
			})

			vim.g.material_style = "deep ocean"
			vim.cmd("colorscheme material")
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
			require("nvim-tree").setup({
				actions = {
					open_file = {
						window_picker = {
							exclude = {
								filetype = { "notify", "packer", "qf" },
								buftype = { "terminal" },
							},
						},
						quit_on_open = true,
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
					width = 40,
					side = "right",
				},
			})
		end,
	})

	use({
		"akinsho/toggleterm.nvim",
		tag = "v1.*",
		config = function()
			require("toggleterm").setup({})
		end,
	})

	use({
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = "all",
				sync_install = false,
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
			})
		end,
	})

	use({
		"nvim-lualine/lualine.nvim",
		requires = {
			"kyazdani42/nvim-web-devicons",
			opt = true,
		},
		config = function()
			require("lualine").setup({
				options = {
					theme = "auto",
					section_separators = "",
					component_separators = "",
				},
				sections = {
					lualine_x = { "encoding", "filetype" },
				},
			})
		end,
	})

	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup({
				auto_close = true,
				auto_preview = false,
			})
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
			local gitsigns = require("gitsigns")
			gitsigns.setup()
		end,
	})

	use({
		"phaazon/hop.nvim",
		branch = "v1",
		config = function()
			local hop = require("hop")
			hop.setup({
				keys = "etovxqpdygfblzhckisuran",
			})
		end,
	})

	use({
		"neovim/nvim-lspconfig",
		config = function()
			local lsp = require("lspconfig")

			vim.diagnostic.config({
				virtual_text = false,
			})

			local on_attach = function(_, bufnr)
				local function map(mode, shortcut, command)
					local opt = {
						noremap = true,
						silent = true,
					}
					vim.api.nvim_buf_set_keymap(bufnr, mode, shortcut, command, opt)
				end

				vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

				map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>")
				map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>")
				map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>")
				map("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>")
				map("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<cr>")
				map("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<cr>")
				map("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>")
				map("n", "kt", "<cmd>lua vim.lsp.buf.type_definition()<cr>")
				map("n", "rn", "<cmd>lua vim.lsp.buf.rename()<cr>")
				map("n", "ca", "<cmd>lua vim.lsp.buf.code_action()<cr>")
			end

			local signs = {
				Error = " ",
				Warn = " ",
				Hint = " ",
				Info = " ",
			}

			for type, icon in pairs(signs) do
				local hl = "DiagnosticSign" .. type
				vim.fn.sign_define(hl, {
					text = icon,
					texthl = hl,
					numhl = hl,
				})
			end

			local capabilities = vim.lsp.protocol.make_client_capabilities()
			local servers = { "sumneko_lua", "yamlls", "jsonls", "bashls", "tsserver" }
			for _, s in pairs(servers) do
				lsp[s].setup({
					capabilities = capabilities,
					on_attach = on_attach,
					flags = { debounce_text_changes = 150 },
				})
			end
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
			local present, luasnip = pcall(require, "luasnip")
			if present then
				luasnip.config.set_config({
					history = true,
					updateevents = "TextChanged,TextChangedI",
				})
				require("luasnip/loaders/from_vscode").load()
			end
		end,
	})

	use({
		"hrsh7th/cmp-nvim-lsp",
	})

	use({
		"hrsh7th/cmp-path",
		after = "cmp-nvim-lsp",
	})

	use({
		"hrsh7th/nvim-cmp",
		config = function()
			local icons = {
				Text = "",
				Method = "",
				Function = "",
				Constructor = "",
				Field = "ﰠ",
				Variable = "",
				Class = "ﴯ",
				Interface = "",
				Module = "",
				Property = "ﰠ",
				Unit = "塞",
				Value = "",
				Enum = "",
				Keyword = "",
				Snippet = "",
				Color = "",
				File = "",
				Reference = "",
				Folder = "",
				EnumMember = "",
				Constant = "",
				Struct = "פּ",
				Event = "",
				Operator = "",
				TypeParameter = "",
			}

			local cmp = require("cmp")

			cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},

				formatting = {
					format = function(entry, vim_item)
						vim_item.kind = string.format("%s %s", icons[vim_item.kind], vim_item.kind)

						vim_item.menu = ({
							nvim_lsp = "[LSP]",
						})[entry.source.name]

						return vim_item
					end,
				},
				mapping = {
					["<Up>"] = cmp.mapping.select_prev_item(),
					["<Down>"] = cmp.mapping.select_next_item(),

					["<C-d>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),

					["<C-n>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.close(),

					["<CR>"] = cmp.mapping.confirm({
						behavior = cmp.ConfirmBehavior.Replace,
						select = true,
					}),

					["<Tab>"] = function(fallback)
						if cmp.visible() then
							cmp.select_next_item()
						elseif require("luasnip").expand_or_jumpable() then
							vim.fn.feedkeys(
								vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true),
								""
							)
						else
							fallback()
						end
					end,

					["<S-Tab>"] = function(fallback)
						if cmp.visible() then
							cmp.select_prev_item()
						elseif require("luasnip").jumpable(-1) then
							vim.fn.feedkeys(
								vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true),
								""
							)
						else
							fallback()
						end
					end,
				},
				sources = cmp.config.sources({
					{
						name = "nvim_lsp",
					},
					{
						name = "luasnip",
					},
					{
						name = "path",
					},
				}),
			})
		end,
	})

	use({
		"numToStr/Comment.nvim",
		config = function()
			local comment = require("Comment")
			comment.setup()
		end,
	})

	use({
		"akinsho/bufferline.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			local bufferline = require("bufferline")
			bufferline.setup({
				options = {
					offsets = {
						{
							filetype = "NvimTree",
							text = "File Explore",
							padding = 1,
						},
					},
					buffer_close_icon = "",
					modified_icon = "",
					left_trunc_marker = "",
					right_trunc_marker = "",
					max_name_length = 14,
					max_prefix_length = 13,
					tab_size = 20,
					show_tab_indicators = false,
					enforce_regular_tabs = true,
					view = "multiwindow",
					show_buffer_close_icons = true,
					show_close_icon = false,
					separator_style = "thick",
					always_show_bufferline = false,
					diagnostics = false,

					custom_filter = function(buf_number)
						local present_type, type = pcall(function()
							return vim.api.nvim_buf_get_var(buf_number, "term_type")
						end)

						if present_type then
							if type == "vert" then
								return false
							elseif type == "hori" then
								return false
							end
							return true
						end

						return true
					end,
				},
			})
		end,
	})

	use({
		"windwp/nvim-autopairs",
		config = function()
			local autopairs = require("nvim-autopairs")
			autopairs.setup()
		end,
	})

	use({
		"mhartington/formatter.nvim",
		config = function()
			local util = require("formatter.util")
			require("formatter").setup({
				filetype = {
					markdown = {
						function()
							return {
								exe = "prettier",
								args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) },
								stdin = true,
							}
						end,
					},
					lua = {
						function()
							return {
								exe = "stylua",
								args = {
									"--search-parent-directories",
									"--stdin-filepath",
									util.escape_path(util.get_current_buffer_file_path()),
									"--",
									"-",
								},
								stdin = true,
							}
						end,
					},
				},
			})
		end,
	})
end)
