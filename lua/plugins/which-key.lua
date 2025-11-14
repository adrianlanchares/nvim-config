return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts_extend = { "spec" },
    opts = {
    preset = "helix",
    defaults = {},
    spec = {
      {
        mode = { "n", "x" },
        { "<leader>f", group = "Find" },
        { "<leader>g", group = "LazyGit" },
        { "[", group = "prev" },
        { "]", group = "next" },
        { "g", group = "goto" },
        { "gs", group = "surround" },
        { "z", group = "fold" },
        { "gx", desc = "Open with system app" },
      },
    },
    },
    keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Keymaps (which-key)",
    },
    {
      "<c-w><space>",
      function()
        require("which-key").show({ keys = "<c-w>", loop = true })
      end,
      desc = "Window Hydra Mode (which-key)",
    },
    },
    config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    end
}
