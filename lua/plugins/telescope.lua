return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-ui-select.nvim" },
        config = function()
            require("telescope").setup({
                defaults = {
                    layout_strategy = "vertical",
                    layout_config = { preview_height = 0.6 },
                },
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {},
                    }
                }
            })
            require("telescope").load_extension("ui-select")
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
            vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
            vim.keymap.set("n", "<leader>/", builtin.current_buffer_fuzzy_find, {})
            vim.keymap.set("n", "gd", builtin.lsp_definitions, {})
            vim.keymap.set("n", "gr", builtin.lsp_references, {})
            vim.keymap.set("n", "gi", builtin.lsp_implementations, {})
            vim.keymap.set("n", "<leader>D", builtin.lsp_type_definitions, {})
            vim.keymap.set("n", "<leader>dd", builtin.diagnostics, {})
            vim.keymap.set("n", "<leader>s", builtin.lsp_document_symbols, {})
            vim.keymap.set("n", "<leader>S", builtin.lsp_workspace_symbols, {})
        end
    }
}
