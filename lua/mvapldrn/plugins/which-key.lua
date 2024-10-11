return {
	"folke/which-key.nvim",

	enabled = true,

	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 400
	end,
	opts = {
		-- Refer to documentation in which-key repos
	},
}
