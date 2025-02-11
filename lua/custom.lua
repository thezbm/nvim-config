local custom_config_path = "~/.nvim-custom.lua"

local M = {}

M.treesitter_languages = { "vim", "vimdoc", "query", "lua", "c", "markdown", "markdown_inline" }
M.lsp_servers = { "lua_ls" }

local ok, custom_config = pcall(dofile, vim.fn.expand(custom_config_path))
if ok and type(custom_config) == "table" then
    if vim.islist(custom_config.treesitter_languages) then
        vim.list_extend(M.treesitter_languages, custom_config.treesitter_languages)
    end
    if vim.islist(custom_config.lsp_servers) then
        vim.list_extend(M.lsp_servers, custom_config.lsp_servers)
    end
end

return M
