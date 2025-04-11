return {
    {
        'neovim/nvim-lspconfig', -- Plugin per LSP
        dependencies = {
            'saghen/blink.cmp',
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
        version = "0.1.7",
        config = function()
            local capabilities = require('blink.cmp').get_lsp_capabilities()
            require("lspconfig").lua_ls.setup {capabilities = capabilities}
            require("lspconfig").clangd.setup {}
            vim.diagnostic.config({
                virtual_text = true,  -- mostra testo direttamente a destra della riga
                signs = true,
                float = { border = "rounded" },
            })

        end,
    }
}
