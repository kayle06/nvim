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

local plugins = {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    { "oxfist/night-owl.nvim", lazy = false, priority = 1000 },
    { "shaunsingh/nord.nvim", lazy = false, priority = 1000 },

    -- File Search
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.6', cmd= "Telescope",
        keys = {
            { "<leader>fs", ":Telescope find_files<CR>", desc = "Find files in this directory" },
            { "<leader>fg", ":Telescope live_grep><CR>", desc = "Filter files in this directory" },
            { "<leader>fw", ":Telescope git_files><CR>", desc = "Find files in this workspace" },
            { "<leader>fo", ":Telescope oldfiles<CR>",   desc = "Show previously opened files" }
        },
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- File Tree
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

    -- Buffer line
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons'
    },

    -- Comment
    {
        'terrortylor/nvim-comment',
        config = function()
            require('nvim_comment').setup({create_mappings = false})
        end
    },

    -- Mason package manager
    {
        "williamboman/mason.nvim",
        event = "VeryLazy",
        bulid = ":MasonUpdate"
    },
    -- lsp
    {
        "neovim/nvim-lspconfig",
        event = "VeryLazy",
        dependencies = {"williamboman/mason-lspconfig.nvim"}
    },

    -- Markdown editor
    {
        "toppair/peek.nvim",
        event = { "VeryLazy" },
        build = "deno task --quiet build:fast",
        config = function()
            require("peek").setup()
            vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
            vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
        end,
    },

    -- Code completion
    {
        "hrsh7th/nvim-cmp",
        event = { "VeryLazy"},
        dependencies = {
            'neovim/nvim-lspconfig',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'hrsh7th/nvim-cmp',
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip'
        }
    }

}
local opts = {}

require("lazy").setup(plugins, opts)
