return {
    "nvimtools/none-ls.nvim",

    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.completion.spell,
                null_ls.builtins.diagnostics.mypy.with({ extra_args = { "--ignore-missing-imports" } }),
            },
        })
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions" })
    end
}
