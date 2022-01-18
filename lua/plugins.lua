local packer = require('packer')

return packer.startup(function()
	use {
		"wbthomason/packer.nvim",
		event = "VimEnter",
   	}

	use {
		"NvChad/nvim-base16.lua",
		after = "packer.nvim",
	}

	use {
		"kyazdani42/nvim-web-devicons",
		after = "nvim-base16.lua",
	}

	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icon
		},
    		config = function() require'nvim-tree'.setup {} end
	}

	use {
		'phaazon/hop.nvim',
		branch = 'v1', -- optional but strongly recommended
		config = function()
			-- you can configure Hop the way you like here; see :h hop-config
			require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
  		end
	}
end)


