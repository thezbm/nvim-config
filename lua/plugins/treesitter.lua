return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = CustomConfig.treesitter_languages,
            sync_install = true,
            highlight = { enable = true },
            indent = { enable = true },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<enter>",
                    node_incremental = "<enter>",
                    node_decremental = "<backspace>",
                },
            },
        })
    end
}
