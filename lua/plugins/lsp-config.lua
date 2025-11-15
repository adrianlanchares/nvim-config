return {
    {
        "mason-org/mason.nvim",

        config = function()
            require("mason").setup()
        end
    },
    {
        "mason-org/mason-lspconfig.nvim",

        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "pyright",
                    "ruff",
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.enable("lua_ls", "pyright", "ruff")
            vim.lsp.config("pyright",
                { offset_encoding = "utf-16", settings = { python = { analysis = { typeChekcingMode = "off" } } } })

            vim.diagnostic.config({ virtual_text = true })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover item" })
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition " })
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions" })
            vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "Format Code" })
            -- Format on save if the LSP client supports it
            vim.api.nvim_create_autocmd("BufWritePre", {
                callback = function(event)
                    vim.lsp.buf.format({
                        bufnr = event.buf,
                        async = false,
                    })
                end,
            })
        end
    }
}
