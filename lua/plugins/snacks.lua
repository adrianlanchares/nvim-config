return {
    "folke/snacks.nvim",
    priotiry = 1000,
    lazy = false,
    
    opts = {
        explorer = { enabled = true },
        scroll = { enabled = true },
        git = { enabled = true },
        lazygit = { enabled = true },
        indent = { enabled = true },
    },
    keys = {
        { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
        { "<leader>g", function() Snacks.lazygit() end, desc = "LazyGit" },
    }
}
