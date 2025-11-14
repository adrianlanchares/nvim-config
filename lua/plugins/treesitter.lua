return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {
                "c",
                "lua",
                "vim",
                "vimdoc",
                "query",
                "markdown",
                "markdown_inline",  -- al of the above 'MUST always be installed'
                "python",
                "caddy",
                "bash",
            },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
