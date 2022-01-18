local packer = require('packer')

return packer.startup(function()
  
  -- Packer plugin manager
  use "wbthomason/packer.nvim"

  -- Plenary
  use 'nvim-lua/plenary.nvim'

  -- OneDark Theme
  use {
    'navarasu/onedark.nvim',
    config = function()
      require('onedark').load()
    end
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require'nvim-treesitter.configs'.setup {
        ensure_installed = "maintained",
        sync_install = false,

        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
      }
      end
  }
  
  -- Gitsigns
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
  }

  -- Base16
  use {
    "NvChad/nvim-base16.lua",
    after = "packer.nvim",
  }

  -- Web Devicons
  use {
    "kyazdani42/nvim-web-devicons",
    after = "nvim-base16.lua",
  }

  -- Tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function() require('nvim-tree').setup() end
  }

  -- Hop
  use {
    'phaazon/hop.nvim',
    branch = 'v1', 
    config = function()
      require('hop').setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  }

  -- Colorizer
  use {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end
  }
end)


