return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = { "nvim-tree/nvim-web-devicons" },

	enabled = true,

	config = function()
		local bufferline = require("bufferline")

		bufferline.setup({
			options = {
				mode = "tabs",
				-- separator_style = "slant",
			},
		})
	end,
}
