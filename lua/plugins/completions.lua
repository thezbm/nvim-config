return {
    "saghen/blink.cmp",
    dependencies = "rafamadriz/friendly-snippets",
    version = "*",
    opts = {
        sources = {
            default = { "lazydev", "lsp", "path", "snippets", "buffer" },
            providers = {
                lazydev = {
                    name = "LazyDev",
                    module = "lazydev.integrations.blink",
                    -- make lazydev completions top priority (see `:h blink.cmp`)
                    score_offset = 100,
                },
            },
        },
        keymap = {
            preset = "default",
            ["<C-n>"] = { "show_and_insert", "select_next", "fallback" },
        },
        cmdline = {
            keymap = {
                preset = "cmdline",
                ["<Tab>"] = { "show_and_insert", "select_next", "fallback" },
                ["<S-Tab>"] = { "select_prev", "fallback" },
            }
        },
        completion = {
            menu = {
                border = "none",
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
