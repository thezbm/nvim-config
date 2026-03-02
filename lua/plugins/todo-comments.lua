return {
    "folke/todo-comments.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    config = function()
        require("todo-comments").setup({})
        vim.keymap.set("n", "<leader>t", ":TodoTelescope<CR>")
    end,
}
