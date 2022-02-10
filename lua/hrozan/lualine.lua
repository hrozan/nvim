local ok, lualine = pcall(require, "lualine")
if not ok then return end

lualine.setup {
    options = {
        theme = "github",
        section_separators = "",
        component_separators = "",
    },
    sections = {lualine_x = {"encoding", "filetype"}},
}
