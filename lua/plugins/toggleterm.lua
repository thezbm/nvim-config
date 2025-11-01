local function find_shell()
    local shells = { "pwsh", "powershell", "fish", "zsh", "bash" }
    for _, shell in ipairs(shells) do
        if vim.fn.executable(shell) == 1 then
            return shell
        end
    end
end

return {
    "akinsho/toggleterm.nvim",
    keys = { "<C-\\>" },
    config = function()
        require("toggleterm").setup({
            open_mapping = "<C-\\>",
            direction = "float",
            close_on_exit = true,
            float_opts = {
                border = "curved",
                winblend = 10,
            },
            shell = find_shell(),
        })
    end,
}
