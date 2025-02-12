return vim.tbl_map(
    function(plugin)
        return vim.tbl_deep_extend("force", plugin, {
            priority = 1000,
            config = function()
                if plugin.config then plugin.config() end
                if vim.g.colors_name ~= CustomConfig.colorscheme then
                    vim.cmd.colorscheme(CustomConfig.colorscheme)
                end
            end
        })
    end, {
        {
            "catppuccin/nvim",
            name = "catppuccin",
            config = function()
                require("catppuccin").setup({
                    integrations = { blink_cmp = true }
                })
            end
        },
        {
            "folke/tokyonight.nvim",
        },
        {
            "rebelot/kanagawa.nvim",
        },
    }
)
