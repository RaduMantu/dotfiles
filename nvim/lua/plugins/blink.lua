return {
    -- https://main.cmp.saghen.dev/installation
    {
        "saghen/blink.cmp",
        dependencies = {
            "saghen/blink.lib",
            "rafamadriz/friendly-snippets"
        },
        build = function()
            require("blink.cmp").build():pwait()
        end,
        opts = {
            keymap = { preset = "super-tab" },
            appearance = {
                nerd_font_variant = "mono"
            },
            completion = { documentation = { auto_show = false } },
            sources = {
                default = { 'lsp' },
            },
            fuzzy = { implementation = "rust" }
        },
        opts_extend = { "sources.default" }
    }
}
