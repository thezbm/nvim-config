local set_colorscheme = function()
    if vim.g.colors_name == CustomConfig.colorscheme then
        return
    end
    vim.cmd.colorscheme(CustomConfig.colorscheme)
end

return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = set_colorscheme
    },
    {
        "folke/tokyonight.nvim",
        priority = 1000,
        config = set_colorscheme
    },
    {
        "rebelot/kanagawa.nvim",
        priority = 1000,
        config = set_colorscheme
    },
}
