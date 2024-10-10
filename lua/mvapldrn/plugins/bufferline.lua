return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",

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
