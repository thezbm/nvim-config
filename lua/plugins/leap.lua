return {
    "https://codeberg.org/andyg/leap.nvim",
    config = function()
        vim.keymap.set("n", "s", "<Plug>(leap)")
        require("leap").opts.safe_labels = {}
    end
}
