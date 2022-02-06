local startup = require('packer').startup
startup(function(use)
      
    -- Packer plugin manager
    use "wbthomason/packer.nvim"

    -- Plenary
    use 'nvim-lua/plenary.nvim'

    -- Github Theme
    use {
        'projekt0n/github-nvim-theme',
        config = function() require('hrozan.github_theme') end
    } 

    -- Web Devicons
    use {
        'kyazdani42/nvim-web-devicons',
        config = function() require('hrozan.icons') end
    }

    -- Tree
    use {
        'kyazdani42/nvim-tree.lua',
        require = 'kyazdani42/nvim-web-devicons',
        config = function() require('hrozan.tree') end
    }

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function() require('hrozan.treesitter') end
    }

    -- Lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function() require('hrozan.lualine') end  
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
        config = function() require('hrozan.hop') end
    }

    -- Colorizer
    use {
        'norcalli/nvim-colorizer.lua',
        config = function() require('colorizer').setup() end
    }

    -- Language Server Protocolocal 
    
    -- Config
    use {
        'neovim/nvim-lspconfig',
        config = function() require('hrozan.lspconfig') end
    }

    --  Signature
    use {
        'ray-x/lsp_signature.nvim',
        requires = { 'neovim/nvim-lspconfig' },
        config = function() require('lsp_signature').setup() end
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
        config = function() require('hrozan.cmp') end,
    }

    -- LuaSnip
    use {
        "L3MON4D3/LuaSnip",
        wants = "friendly-snippets",
        after = "nvim-cmp",
        config = function() require('hrozan.luasnip') end,
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
        config = function() require("hrozan.bufferline") end
    }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} },
        config = function() require('hrozan.telescope') end
    }

    -- Dressing
    use {'stevearc/dressing.nvim'}

    -- Trouble
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function() require("hrozan.trouble") end
    }

    -- Autopairs
    use {
        "windwp/nvim-autopairs",
        config = function() require('hrozan.autopairs') end,
    }

    use 'folke/lsp-colors.nvim'

end)


