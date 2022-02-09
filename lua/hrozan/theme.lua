local theme = require('material')

vim.g.material_style = 'deep ocean'

theme.setup{
    disable = {
        background = false, 
    },
}

vim.cmd 'colorscheme material'
