local packer = require('packer')

return packer.startup(function(use)
  
  -- Packer plugin manager
  use "wbthomason/packer.nvim"

  -- Plenary
  use 'nvim-lua/plenary.nvim'

  -- OneDark Theme
  use {
    'navarasu/onedark.nvim',
    config = function() require('plugins.config.onedark') end
  } 

  -- Web Devicons
  use {
    'kyazdani42/nvim-web-devicons',
    config = function() require('plugins.config.icons') end
  }

  -- Tree
  use {
    'kyazdani42/nvim-tree.lua',
    require = 'kyazdani42/nvim-web-devicons',
    config = function() require('plugins.config.tree') end
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function() require('plugins.config.treesitter') end
  }

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function() require('plugins.config.lualine') end  
  }
  
  -- Gitsigns
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }

  -- Hop
  use {
    'phaazon/hop.nvim',
    branch = 'v1', 
    config = function() require('plugins.config.hop') end
  }

  -- Colorizer
  use {
    'norcalli/nvim-colorizer.lua',
    config = function() require('colorizer').setup() end
  }

  -- LSP Config
  use {
    'neovim/nvim-lspconfig',
    config = function() require('plugins.config.lsp') end
  }


  -- Blankline
  use {
    'lukas-reineke/indent-blankline.nvim',
    event = 'BufRead',
    config = function() require('plugins.config.blankline') end,
  }

  -- Autopairs
  use {
    "windwp/nvim-autopairs",
    config = function() require('plugins.config.autopairs') end,
  }

end)


