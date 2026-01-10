return {
    -- inline git blame
    {
        "APZelos/blamer.nvim",
        config = function()
            vim.g.blamer_enabled              = 0
            vim.g.blamer_delay                = 0
            vim.g.blamer_show_in_visual_modes = 1
            vim.g.blamer_show_in_insert_modes = 0
            vim.g.blamer_date_format          = "%d/%m/%y"
            vim.g.blamer_template = "❮❮❮ <committer> • " ..
                                    "<summary> (<commit-short>) • " ..
                                    "committer-time>"
            vim.api.nvim_set_hl(0, "Blamer", { fg = "#32cd32" })
        end,
        keys = {
            { "b", "<cmd>BlamerToggle<cr>", desc="Toggles git blame" }
        }
    },
}
