local ok, tree = pcall(require, "nvim-tree")
if not ok then return end

local g = vim.g

g.nvim_tree_add_trailing = 0
g.nvim_tree_git_hl = 0
g.nvim_tree_highlight_opened_files = 1
g.nvim_tree_indent_markers = 0
g.nvim_tree_quit_on_open = 1
g.nvim_tree_root_folder_modifier = table.concat {
    ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??",
}

g.nvim_tree_window_picker_exclude = {
    filetype = {"notify", "packer", "qf"},
    buftype = {"terminal"},
}

tree.setup {
    filters = {dotfiles = false},
    ignore_ft_on_setup = {"dashboard"},
    open_on_tab = false,
    update_cwd = true,
    update_focused_file = {enable = true, update_cwd = false},
    view = {width = 40, side = "right"},
}
