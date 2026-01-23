return {
    -- https://cmp.saghen.dev/installation
    {
        "saghen/blink.cmp",
        dependencies = { "rafamadriz/friendly-snippets" },
        build = "cargo build --release",
        opts = {
            keymap = { preset = "super-tab" },
            appearance = {
                nerd_font_variant = "mono"
            },
            completion = { documentation = { auto_show = false } },
            sources = {
                default = { 'lsp' },
            },
            fuzzy = { implementation = "prefer_rust_with_warning" }
        },
        opts_extend = { "sources.default" }
    }
}
