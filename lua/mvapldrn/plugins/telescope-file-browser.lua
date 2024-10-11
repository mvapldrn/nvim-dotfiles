return {
	"nvim-telescope/telescope-file-browser.nvim",
	dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },

	enabled = true,

	config = function()
		local keymap = vim.keymap

		keymap.set("n", "<space>fb", ":Telescope file_browser<CR>", { desc = "Telescope file browser" })
	end,
}
