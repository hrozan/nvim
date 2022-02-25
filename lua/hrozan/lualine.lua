local lualine = require("lualine")

lualine.setup {
    options = {
        theme = "auto",
        section_separators = "",
        component_separators = "",
    },
    sections = {lualine_x = {"encoding", "filetype"}},
}
