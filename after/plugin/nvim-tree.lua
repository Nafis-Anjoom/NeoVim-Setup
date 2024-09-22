-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.keymap.set('n', '<leader>ft', "<cmd>:NvimTreeToggle<cr>", {})
vim.keymap.set('n', '<C-w>>', "<cmd>:NvimTreeResize +10<cr>", {})
vim.keymap.set('n', '<C-w><', "<cmd>:NvimTreeResize -10<cr>", {})

local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set('n', '<C-f>', api.node.open.vertical, {})
end

-- pass to setup along with your other options
require("nvim-tree").setup {
    hijack_cursor = true,
    on_attach = my_on_attach,
    renderer = {
        icons = {
            git_placement = "right_align",
            show = {
                folder_arrow = false,
                git = true
            },
        },
        indent_markers = {
            enable = true
        },
    },
    actions = {
        open_file = {
            quit_on_open = true,
        },
    },
    diagnostics = {
        enable = true,
        show_on_dirs = true,
    },
    modified = {
        enable = true,
        show_on_dirs = true,
    }
}
