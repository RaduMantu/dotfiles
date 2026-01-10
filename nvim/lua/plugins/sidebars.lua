return {
    -- NerdTree
    {
        "preservim/nerdtree",
        config = function()
            vim.g.NERDTreeMinimalUI   = 1
            vim.g.NERDTreeQuitOnOpen  = 0
            vim.g.NERDTreeFocusOnOpen = 0
            vim.g.NERDTreeStatusline  = 0
            vim.g.NERDTreeMinimalUI   = 30
        end,
        keys = {
            { "'",
              function()
                vim.cmd("NERDTreeToggle")
                vim.cmd("TagbarToggle")
              end,
              mode = "n"
            }
        }
    },
    -- TagBar
    {
        "preservim/tagbar",
        config = function()
            vim.g.tagbar_compact = 1
            vim.g.tagbar_width   = 30
        end,
    },
}
