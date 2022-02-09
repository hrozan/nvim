local theme = require('material')

vim.g.material_style = 'deep ocean'

theme.setup{
    disable = {
        background = true, 
    },
}

vim.cmd 'colorscheme material'
