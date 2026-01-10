return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        lazy = false,       -- treesitter doesn't lazy-load well
        opts = {            -- user options
            ensure_installed = { all },     -- enable all parsers
            ignore_install = { "latex", },  -- this sucks
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,  -- performance
            },
            indent = {
                enable = false,
                disable = { "c", "c++" },   -- interferes with my settings
            },
            sync_install = false,           -- asynchronous installation
            auto_install = true,            -- install on buffer entry
        },
        config = function(_, opts)
            -- fallback in case of loading issues
            local ok, configs = pcall(require, "nvim-treesitter.configs")
            if ok then
                configs.setup(opts)
            end
        end,
    }
}

