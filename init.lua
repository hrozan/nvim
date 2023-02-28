require("options")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",
  "nvim-lua/plenary.nvim",
  "nvim-tree/nvim-web-devicons",
  {
      "nvim-treesitter/nvim-treesitter",
      config = function()
	require'nvim-treesitter.configs'.setup {
	     ensure_installed = { "c", "lua", "vim", "help", "markdown" },

        }
      end
  },
  "MunifTanjim/nui.nvim",
  {
	"nvim-neo-tree/neo-tree.nvim", 
  	branch = "v2.x",
    	requires = { 
      		"nvim-lua/plenary.nvim",
      		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      		"MunifTanjim/nui.nvim",
    	} 
  },
  {
	"folke/tokyonight.nvim",
	config = function()
		vim.cmd "colorscheme tokyonight"
	end,
  }
})

