local options = {
    mouse = "a",
    termguicolors = true,
    cmdheight = 1,
    splitbelow = true,
    splitright = true,
    fileencoding = "utf-8",
    swapfile = false,
    autoindent = true,
    smartindent = true,
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    cursorline = true,
    number = true,
    relativenumber = true,
    numberwidth = 4,
    signcolumn = "yes",
    wrap = false,
    scrolloff = 8,
    sidescrolloff = 16,
    ignorecase = true,
    smartcase = true,
    completeopt = { "menuone", "noselect" },
    pumheight = 10,
    timeout = true,
    timeoutlen = 500,
    updatetime = 500,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.keymap.set("n", "<leader>x", ":.lua<CR>")
vim.keymap.set("v", "<leader>x", ":lua<CR>")
vim.keymap.set("n", "<C-c>", ":bdelete<CR>")

vim.api.nvim_create_autocmd("TextYankPost", {
    group = vim.api.nvim_create_augroup("YankHighlight", {}),
    callback = function()
        vim.highlight.on_yank()
    end
})
