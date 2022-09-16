require('material').setup {
  contrast = {
    sidebars = true,
    floating_windows = false,
    line_numbers = false,
    sign_column = false,
    cursor_line = true,
    non_current_windows = false,
    popup_menu = true,
  },

  italics = {
    comments = false,
    keywords = false,
    functions = false,
    strings = false,
    variables = false,
  },

  contrast_filetypes = {
    'terminal',
    'packer',
    'qf',
  },

  high_visibility = {
    lighter = false,
    darker = false,
  },

  disable = {
    colored_cursor = false,
    borders = false,
    background = false,
    term_colors = false,
    eob_lines = false,
  },

  lualine_style = 'default',

  async_loading = true,

  plugins = {
    trouble = true,
    nvim_cmp = true,
    neogit = true,
    gitsigns = true,
    git_gutter = true,
    telescope = true,
    nvim_tree = true,
    sidebar_nvim = true,
    lsp_saga = true,
    nvim_dap = true,
    nvim_navic = true,
    which_key = true,
    sneak = true,
    hop = true,
    indent_blankline = true,
    nvim_illuminate = true,
    mini = true,
  },
}
vim.g.material_style = 'deep ocean'
vim.cmd 'colorscheme material'
