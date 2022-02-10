local ok, github_theme = pcall(require, "github-theme")
if not ok then return end

github_theme.setup {
    theme_style = "dark_default",
    transparent = true,
    dark_float = true,
}
