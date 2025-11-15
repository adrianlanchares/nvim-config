return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.9",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", function()
				builtin.find_files({
					hidden = true,
					no_ignore = true,
					file_ignore_patterns = { "%.git/", "%.venv", "%.mypy_cache", "%__pycache__", ".DS_Store" },
				})
			end, { desc = "Find files" })

			vim.keymap.set("n", "<leader>fg", function()
				builtin.live_grep({
					additional_args = function()
						return { "--hidden", "--no-ignore" }
					end,
					file_ignore_patterns = { "%.git/", "%.venv", "%.mypy_cache", "%__pycache__", ".DS_Store" },
				})
			end, { desc = "Grep through files" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			local telescope = require("telescope")
			telescope.setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			telescope.load_extension("ui-select")
		end,
	},
}
