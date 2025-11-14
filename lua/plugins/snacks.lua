return {
    "folke/snacks.nvim",
    priotiry = 1000,
    lazy = false,
    
    opts = {
        explorer = { enabled = true },
        scroll = { enabled = true },
        git = { enabled = true },
    },
    keys = {
        { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
    }
}
