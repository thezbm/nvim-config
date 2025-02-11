---@class CustomConfig
---@field treesitter_languages string[]
---@field lsp_servers LspServers
---@field colorscheme string

---@class LspServers
---@field ensure_installed string[]
---@field enabled string[]

---@type CustomConfig
local M = {
    treesitter_languages = { "vim", "vimdoc", "query", "lua", "c", "markdown", "markdown_inline" },
    lsp_servers = {
        ensure_installed = { "lua_ls" },
        enabled = { "lua_ls" },
    },
    colorscheme = "catppuccin-mocha",
}

local custom_config_path = "~/.nvim-custom.lua"

---@type boolean, CustomConfig
local ok, custom_config = pcall(dofile, vim.fn.expand(custom_config_path))
if ok and type(custom_config) == "table" then
    vim.list_extend(M.treesitter_languages, custom_config.treesitter_languages)
    vim.list_extend(M.lsp_servers.enabled, custom_config.lsp_servers.enabled)
    vim.list_extend(M.lsp_servers.ensure_installed, custom_config.lsp_servers.ensure_installed)
    M.colorscheme = custom_config.colorscheme or M.colorscheme
end

return M
