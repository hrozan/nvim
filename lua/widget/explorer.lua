require('nvim-tree').setup {
  actions = {
    open_file = {
      window_picker = {
        exclude = {
          filetype = { 'notify', 'packer', 'qf' },
          buftype = { 'terminal' },
        },
      },
    },
  },
  view = {
    width = 45,
    side = 'right',
  },
}
