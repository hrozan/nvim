local lualine = require('lualine') 

lualine.setup {
  options = {
    theme = 'onedark',
    section_separators = '', 
    component_separators = ''
  },
  sections = {
    lualine_x = {'encoding', 'filetype'},
  },
}
