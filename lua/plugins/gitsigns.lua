return {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    config = function()
        local gitsigns = require("gitsigns")
        gitsigns.setup({})
        vim.keymap.set("n", "<C-p>", function() gitsigns.nav_hunk("prev") end)
        vim.keymap.set("n", "<C-n>", function() gitsigns.nav_hunk("next") end)
        vim.keymap.set("n", "<leader>p", gitsigns.preview_hunk)
        vim.keymap.set("n", "<leader>gr", gitsigns.reset_hunk)
        vim.keymap.set("n", "<leader>gb", gitsigns.blame_line)
        vim.keymap.set("n", "<leader>gs", gitsigns.stage_hunk)
    end
}
