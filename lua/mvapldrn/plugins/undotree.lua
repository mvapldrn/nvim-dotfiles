return {
	"mbbill/undotree",

	enabled = true,

	config = function()
		local keymap = vim.keymap

		keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<CR>", { desc = "Open undo tree" })
	end,
}
