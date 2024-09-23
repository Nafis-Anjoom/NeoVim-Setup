require("catppuccin").setup({
    color_overrides = {
        mocha = {
            base = "#181818",
            mantle = "#181818",
            crust = "#181818",
            mauve = "teal",

        }
    },
})

vim.cmd.colorscheme "catppuccin-mocha"
