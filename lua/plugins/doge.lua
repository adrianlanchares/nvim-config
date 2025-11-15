return {
	"kkoomen/vim-doge",

	config = function()
		vim.g.doge_python_settings = {
			single_quotes = 0,
			omit_redundant_param_types = 1,
		}

		vim.g.doge_doc_standard_python = "google"
		vim.g.doge_enable_mappings = 1
		vim.g.doge_mapping = "<leader>d"
	end,
}
