return {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    config = function()
        require("gitsigns").setup({})
        vim.keymap.set("n", "<C-p>", ":Gitsigns prev_hunk<cr>")
        vim.keymap.set("n", "<C-n>", ":Gitsigns next_hunk<cr>")
        vim.keymap.set("n", "<leader>p", ":Gitsigns preview_hunk<cr>")
    end
}
