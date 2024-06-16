return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = { "vim", "vimdoc", "query", "lua", "c", "cpp", "python", "go", "json", "toml", "html", "css", "javascript", "typescript", "elixir", "markdown", "markdown_inline" },
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
