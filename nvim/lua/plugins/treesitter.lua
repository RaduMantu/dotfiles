return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        lazy = "false",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup {
                ensure_installed = { all },     -- enable all parsers
                ignore_install = { "latex", },  -- this sucks
                sync_install = false,           -- asynchronous installation
                auto_install = true,            -- install on buffer entry
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,  -- performance
                },
                indent = {
                    enable = false,
                    disable = { "c", "c++" },   -- interferes with my settings
                }
            }
        end,
    }
}

