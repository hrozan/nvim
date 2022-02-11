# Mappings

### Nvim

- `<C-q>` quit current tab
- `<A-q>` save all and quit
- `<C-s>` save all
- `U` redi
- `<C-a>` copy all content

### Packer

- `<C-p>` packer sync and reload 

### NvimTree

- `<C-1>` toggle nvimtree 
- `<CR>` or `o` on `..` will cd in the above directory
- `<C-]>` will cd in the directory under the cursor
- `<BS>` will close current opened directory or parent
- `a` to add a file. Adding a directory requires leaving a leading `/` at the end of the path.
- `r` to rename a file
- `<C-r>` to rename a file and omit the filename on input
- `x` to add/remove file/directory to cut clipboard
- `c` to add/remove file/directory to copy clipboard
- `y` will copy name to system clipboard
- `Y` will copy relative path to system clipboard
- `gy` will copy absolute path to system clipboard
- `p` to paste from clipboard. Cut clipboard has precedence over copy (will prompt for confirmation)
- `d` to delete a file (will prompt for confirmation)
- `D` to trash a file (configured in setup())
- `]c` to go to next git item
- `[c` to go to prev git item
- `-` to navigate up to the parent directory of the current file/directory
- `s` to open a file with default system application or a folder with default file manager
- `<C-v>` will open the file in a vertical split
- `<C-x>` will open the file in a horizontal split
- `<C-t>` will open the file in a new tab
- `<Tab>` will open the file as a preview (keeps the cursor in the tree)
- `I` will toggle visibility of hidden folders / files
- `H` will toggle visibility of dotfiles (files/folders starting with a `.`)
- `R` will refresh the tree

### GitSings

- `gr` reset currnt hunk

### Formatter

- `<A-f>` format file

### Telescope

- `<A-2>` open find files

### Trouble

- `<A-3>` open trouble 

### Hop

- `fw` hop word
