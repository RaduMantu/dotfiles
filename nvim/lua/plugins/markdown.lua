return {
    {
        "iamcco/markdown-preview.nvim",
        init = function()
            vim.env.NODE_OPTIONS = "--no-experimental-webstorage"
            vim.g.mkdp_browser    = "/usr/bin/firefox"
            vim.g.mkdp_auto_close = 0
            vim.g.mkdp_theme      = "light"
            vim.g.mkdp_filetypes  = { "markdown" }
        end,
        ft = { "markdown" },
        run = "cd app && yarn install",
    }
}
