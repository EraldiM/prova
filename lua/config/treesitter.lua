return{
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        dependencies = {
            {
            "folke/lazydev.nvim",
            ft = "lua", -- only load on lua files
            opts = {
            library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        },
    },
},
        },
        config = function()
            require'nvim-treesitter.configs'.setup{
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
                auto_install = true,
                highlight = {
                    enable = true,
                },
            }
        end,
    }
}

