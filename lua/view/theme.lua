require('material').setup {
  contrast = {
    terminal = true, -- Enable contrast for the built-in terminal
    sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
  },
}

vim.g.material_style = 'deep ocean'
vim.cmd 'colorscheme material'
