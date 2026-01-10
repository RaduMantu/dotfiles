return {
    {
        "nvim-telescope/telescope.nvim",
        lazy = false,
        dependencies = {
            "nvim-lua/plenary.nvim",    -- lua utils
            "BurntSushi/ripgrep"        -- for live grep, etc.
        },
        keys = {
            { "<leader>ff", "<cmd>Telescope find_files<cr>" },
            { "<leader>fg", "<cmd>Telescope live_grep<cr>" },
            { "<leader>fb", "<cmd>Telescope buffers<cr>" },
            { "<leader>fh", "<cmd>Telescope help_tags<cr>" },
            -- TODO: add bindings for LSP pickers
            { "<leader>fr", "<cmd>Telescope lsp_referenecs<cr>" },
            { "<leader>fi", "<cmd>Telescope lsp_incoming_calls<cr>" },
            { "<leader>fo", "<cmd>Telescope lsp_outgoing_calls<cr>" },
            { "<leader>fw", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>" },
        }
    }
}
