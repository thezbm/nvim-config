return {
    "saghen/blink.cmp",
    dependencies = "rafamadriz/friendly-snippets",
    version = "*",
    opts = {
        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },
        keymap = {
            preset = "default",
            ["<C-n>"] = { "show_and_insert", "select_next", "fallback" },
            cmdline = {
                preset = "default",
                ["<Tab>"] = { "show_and_insert", "select_next", "fallback" },
                ["<S-Tab>"] = { "select_prev", "fallback" },
            }
        },
        completion = {
            menu = {
                auto_show = function(ctx) return ctx.mode ~= "cmdline" end,
            },
            list = {
                selection = {
                    preselect = function(ctx) return ctx.mode ~= "cmdline" end,
                }
            },
            documentation = {
                window = {
                    border = "solid",
                },
                auto_show = true,
            },
        },
        signature = {
            window = {
                border = "solid",
            },
            enabled = true,
        },
    },
    opts_extend = { "sources.default" }
}
