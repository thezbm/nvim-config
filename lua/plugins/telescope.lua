return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-ui-select.nvim" },
        config = function()
            require("telescope").setup({
                defaults = {
                    layout_strategy = "horizontal",
                    layout_config = {
                        ["horizontal"] = {
                            width = 0.9,
                            height = 0.9,
                            preview_width = 0.6,
                            preview_cutoff = 120,
                            propmpt_position = "bottom",
                        },
                    }
                },
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {},
                    }
                }
            })
            require("telescope").load_extension("ui-select")
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
            vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
            vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
            vim.keymap.set("n", "<leader>fr", builtin.resume, {})
            vim.keymap.set("n", "<leader>/", builtin.current_buffer_fuzzy_find, {})
            vim.keymap.set("n", "gd", builtin.lsp_definitions, {})
            vim.keymap.set("n", "gr", builtin.lsp_references, {nowait = true})
            vim.keymap.set("n", "gii", builtin.lsp_implementations, {})
            vim.keymap.set("n", "gic", builtin.lsp_incoming_calls, {})
            vim.keymap.set("n", "goc", builtin.lsp_outgoing_calls, {})
            vim.keymap.set("n", "gtd", builtin.lsp_type_definitions, {})
            vim.keymap.set("n", "<leader>dd", builtin.diagnostics, {})
            vim.keymap.set("n", "<leader>s", builtin.lsp_document_symbols, {})
            vim.keymap.set("n", "<leader>S", builtin.lsp_workspace_symbols, {})
        end
    }
}
