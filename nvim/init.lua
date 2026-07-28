-- invoke plugin manager
require("config.lazy")

-- enable language servers (check associated .lua file in lsp/)
-- disable LSP logging to prevent large log files (or set to "debug")
vim.lsp.enable({ "clangd", "pylsp", "vimtex" })
vim.lsp.set_level = "off"

-- diagnostics display preferences
vim.diagnostic.config({
    virtual_text  = false,
    virtual_lines = false,
    underline     = true,
    signs         = true,
})

-- copy and paste from system primary clipboard
vim.keymap.set({'n', 'v'}, '<C-y>', '"+y', { noremap = true, silent = true })
vim.keymap.set({'n', 'v'}, '<C-p>', '"+p', { noremap = true, silent = true })

-- extra keybinds for lsp
vim.keymap.set("n", "gD",        "<cmd>lua vim.lsp.buf.declaration()<cr>")
vim.keymap.set("n", "gd",        "<cmd>lua vim.lsp.buf.definition()<cr>")
vim.keymap.set("n", "gi",        "<cmd>lua vim.lsp.buf.implementation()<cr>")
vim.keymap.set("n", "gr",        "<cmd>lua vim.lsp.buf.references()<cr>")
vim.keymap.set("n", "<C-k>",     "<cmd>lua vim.lsp.buf.signature_help()<cr>")
vim.keymap.set("n", "rn",        "<cmd>lua vim.lsp.buf.rename()<cr>")
vim.keymap.set("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>")
vim.keymap.set("n", "<space>f",  "<cmd>lua vim.lsp.buf.formatting()<cr>")
vim.keymap.set("n", "[d",        "<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>")
vim.keymap.set("n", "]d",        "<cmd>lua vim.lsp.diagnostic.goto_next()<cr>")

vim.keymap.set("n", "e", function()
    if vim.diagnostic.config().virtual_lines == false then
        vim.diagnostic.config({ virtual_lines = { current_line = true } })
    else
        vim.diagnostic.config({ virtual_lines = false })
    end
end)

vim.keymap.set("n", "E", function()
    if vim.diagnostic.config().virtual_lines ~= true then
        vim.diagnostic.config({ virtual_lines = true })
    else
        vim.diagnostic.config({ virtual_lines = false })
    end
end)

-- enable completion
-- vim.api.nvim_create_autocmd('LspAttach', {
--     callback = function(ev)
--         local client = vim.lsp.get_client_by_id(ev.data.client_id)
--         if client:supports_method('textDocument/completion') then
--             vim.lsp.completion.enable(true, client.id, ev.buf,
--                                       { autotrigger = false })
--         end
--     end,
-- })

-- set visual representation for trailing whitespaces and tabs
vim.opt.list = true
vim.opt.listchars = {
    trail = '·',
    tab = '» ',
}
vim.api.nvim_set_hl(0, "Whitespace", { fg = "#707880" })

-- don't display ~ instead of inexistent lines
vim.opt.fillchars = { eob = " " }

-- set fill character for missing chunk in diff view
vim.opt.fillchars:append({ diff = '╱' })

-- draw vertical marker after 80th char
vim.opt.colorcolumn = "81"

-- enable 24b RGB colors
vim.opt.termguicolors = true

-- functional preferences
vim.opt.tabstop     = 4     -- render \t as 4 spaces, not 8
vim.opt.shiftwidth  = 4     -- indents have a width of 4
vim.opt.softtabstop = 4     -- number of columns for a \t
vim.opt.expandtab   = true  -- expand \t to spaces
vim.opt.number      = true  -- show line numbers
vim.opt.cursorline  = true  -- highlight current line
vim.opt.mouse       = "a"   -- allow mouse click
vim.opt.ignorecase  = true  -- needed for smartcase
vim.opt.smartcase   = true  -- set smartcase in searches

-- set tax expansion options for local buffers when opened
-- NOTE: global options can be overwritten
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
    pattern = { "*.c", "*.cpp", "*.h", "*.hpp" },
    callback = function()
        vim.bo.tabstop     = 4
        vim.bo.shiftwidth  = 4
        vim.bo.softtabstop = 4
        vim.bo.expandtab   = true
    end,
})


