return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = { "windwp/nvim-ts-autotag" },

	enabled = true,

	event = { "BufReadPre", "BufNewFile" },

	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
			autotag = {
				enable = true,
			},
			ensure_installed = {
				"awk",
				"bash",
				"c",
				"cpp",
				"css",
				"html",
				"java",
				"json",
				"kotlin",
				"lua",
				"make",
				"markdown",
				"markdown_inline",
				"sql",
				"tcl",
				"vim",
				"xml",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-Space",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})
	end,
}
