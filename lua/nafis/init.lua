require("nafis.remap")
require("nafis.set")


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            vim.cmd('colorscheme catppuccin-mocha')
        end,
        },
    { 'nvim-lua/plenary.nvim' },
    { 'nvim-telescope/telescope.nvim', tag = '0.1.4' },
    { 'tpope/vim-commentary'},
    { 'tpope/vim-surround'},
    { 'ThePrimeagen/harpoon' },
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {}
        end,
    },

    -- lsp-zeo
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},

    {'nvim-lualine/lualine.nvim'},
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    {"nvim-treesitter/nvim-treesitter-textobjects"},

    {'windwp/nvim-ts-autotag'},
    {'tpope/vim-fugitive'},
    {"folke/trouble.nvim"},
    -- {"akinsho/bufferline.nvim", version = "*" }
})

