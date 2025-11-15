return {
	"folke/snacks.nvim",
	opts = {
		notifier = { enabled = true },
		image = { enabled = true },
		scroll = { enabled = true },
		indent = { enabled = true },
		picker = {
			sources = {
				explorer = {
					hidden = true,
					ignored = true,
					exclude = { ".DS_Store", "__pycache__", ".git", ".mypy_cache" },
				},
			},
		},
	},
	keys = {
		{
			"<leader>e",
			function()
				Snacks.explorer()
			end,
			desc = "File Explorer",
		},
		{
			"<leader>g",
			function()
				Snacks.lazygit()
			end,
			desc = "LazyGit",
		},
		{
			"<leader>n",
			function()
				Snacks.notifier.show_history()
			end,
			desc = "Notifications",
		},
	},
}
