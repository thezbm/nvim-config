return {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("oil").setup({
            skip_confirm_for_simple_edits = true,
            view_options = {
                show_hidden = true,
            },
        })
        vim.keymap.set("n", "<C-b>", ":Oil<CR>")
    end
}
