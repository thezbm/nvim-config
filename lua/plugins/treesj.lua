return {
    "Wansmer/treesj",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    keys = { "<space>m" },
    config = function()
        require("treesj").setup({ use_default_keymaps = false })
        vim.keymap.set("n", "<leader>m", require("treesj").toggle)
    end
}
