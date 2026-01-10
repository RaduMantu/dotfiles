return {
    {
        "romgrk/barbar.nvim",
        dependencies = {
            "lewis6991/gitsigns.nvim",      -- for git status
            "nvim-tree/nvim-web-devicons"   -- for file icons
        },
        lazy = false,
        config = function()
            vim.g.barbar_auto_setup = false
        end,
        keys = {
            { "<A-,>", "<cmd>BufferPrevious<cr>" },
            { "<A-.>", "<cmd>BufferNext<cr>" },
            { "<A-<>", "<cmd>BufferMovePrevious<cr>" },
            { "<A->>", "<cmd>BufferMoveNext<cr>" },
            { "<A-1>", "<cmd>BufferGoto 1<cr>" },
            { "<A-2>", "<cmd>BufferGoto 2<cr>" },
            { "<A-3>", "<cmd>BufferGoto 3<cr>" },
            { "<A-4>", "<cmd>BufferGoto 4<cr>" },
            { "<A-5>", "<cmd>BufferGoto 5<cr>" },
            { "<A-6>", "<cmd>BufferGoto 6<cr>" },
            { "<A-7>", "<cmd>BufferGoto 7<cr>" },
            { "<A-8>", "<cmd>BufferGoto 8<cr>" },
            { "<A-9>", "<cmd>BufferGoto 9<cr>" },
            { "<A-0>", "<cmd>BufferLast<cr>" },
            { "<A-c>", "<cmd>BufferClose<cr>" },
            { "<A-C>", "<cmd>BufferCloseAllButCurrent<cr>" },
        },
    },
}
