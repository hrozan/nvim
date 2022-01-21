local packer = require('packer')

return packer.startup(function(use)
      
    -- Packer plugin manager
    use "wbthomason/packer.nvim"

    -- Plenary
    use 'nvim-lua/plenary.nvim'

    -- OneDark Theme
    use {
        'navarasu/onedark.nvim',
        config = function() require('plugins.onedark') end
    } 

    -- Web Devicons
    use {
        'kyazdani42/nvim-web-devicons',
        config = function() require('plugins.icons') end
    }

    -- Tree
    use {
        'kyazdani42/nvim-tree.lua',
        require = 'kyazdani42/nvim-web-devicons',
        config = function() require('plugins.tree') end
    }

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function() require('plugins.treesitter') end
    }

    -- Lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function() require('plugins.lualine') end  
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
        config = function() require('plugins.hop') end
    }

    -- Colorizer
    use {
        'norcalli/nvim-colorizer.lua',
        config = function() require('colorizer').setup() end
    }

    -- LSP Config
    use {
        'neovim/nvim-lspconfig',
        config = function() require('plugins.lsp') end
    }

    -- LSP Signature
    use {
        'ray-x/lsp_signature.nvim',
        config = function() require('lsp_signature').setup() end
    }

    -- Blankline
    use {
        'lukas-reineke/indent-blankline.nvim',
        event = 'BufRead',
        config = function() require('plugins.blankline') end,
    }

    -- Autopairs
    use {
        "windwp/nvim-autopairs",
        config = function() require('plugins.autopairs') end,
    }

    -- Auto Completion

    -- Friendly snippets
    use {
        "rafamadriz/friendly-snippets",
        event = "InsertEnter",
    }

    -- CMP
    use {
        "hrsh7th/nvim-cmp",
        after = "friendly-snippets",
        config = function() require('plugins.cmp') end,
    }

    -- LuaSnip
    use {
        "L3MON4D3/LuaSnip",
        wants = "friendly-snippets",
        after = "nvim-cmp",
        config = function() require('plugins.luasnip') end,
    }

    use { "saadparwaiz1/cmp_luasnip", after = "LuaSnip" }
    use { "hrsh7th/cmp-nvim-lua", after = "cmp_luasnip" }
    use { "hrsh7th/cmp-nvim-lsp", after = "cmp-nvim-lua" }
    use { "hrsh7th/cmp-buffer", after = "cmp-nvim-lsp" }
    use { "hrsh7th/cmp-path", after = "cmp-buffer" }


    -- Comment
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- Bufferline
    use {
        'akinsho/bufferline.nvim', 
        requires = 'kyazdani42/nvim-web-devicons',
        config = function() require("plugins.bufferline") end
    }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} },
        config = function() require('plugins.telescope') end
    }

    -- Trouble
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function() require("plugins.trouble") end
    }


end)

