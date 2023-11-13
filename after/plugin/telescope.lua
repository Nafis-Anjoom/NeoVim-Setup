local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>?', builtin.oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', builtin.buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
    builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
    })
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>spd', builtin.diagnostics, { desc = '[S]earch [P]roject [D]iagnostics' })
vim.keymap.set('n', '<leader>sdd', function()
    builtin.diagnostics({bufnr = 0})
end, { desc = '[S]earch [D]ocument [D]iagnostics' })

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
