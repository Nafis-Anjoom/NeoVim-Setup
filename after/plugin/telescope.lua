local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

require("telescope").setup {
    pickers = {
        find_files = {
            mappings = {
                i = {
                    ["<C-f>"] = "file_vsplit",
                },
            },
        },
        grep_string = {
            mappings = {
                i = {
                    ["<C-f>"] = "file_vsplit",
                },
            },
        },
        live_grep = {
            mappings = {
                i = {
                    ["<C-f>"] = "file_vsplit",
                },
            },
        },
    },
}
