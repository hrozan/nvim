local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local packer_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  packer_bootstrap = vim.fn.system {
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  }
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'editorconfig/editorconfig-vim'

  use {
    'marko-cerovac/material.nvim',
    config = function()
      require 'ui.theme'
    end,
  }

  use {
    'kyazdani42/nvim-web-devicons',
    config = function()
      require('nvim-web-devicons').setup()
    end,
  }

  use {
    'kyazdani42/nvim-tree.lua',
    require = 'kyazdani42/nvim-web-devicons',
    config = function()
      require 'ui.tree'
    end,
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require 'ui.treesitter'
    end,
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      opt = true,
    },
    config = function()
      require 'ui.statusbar'
    end,
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } },
    config = function()
      require('telescope').setup()
    end,
  }

  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup()
    end,
  }

  use {
    'phaazon/hop.nvim',
    branch = 'v1',
    config = function()
      require('hop').setup {
        keys = 'etovxqpdygfblzhckisuran',
      }
    end,
  }

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end,
  }

  use {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require 'ui.tabs'
    end,
  }

  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end,
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
