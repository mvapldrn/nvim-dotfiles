return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },

	enabled = true,

	event = { "BufReadPre", "BufNewFile" },

	config = function()
		local todo_comments = require("todo-comments")

		local keymap = vim.keymap

		keymap.set("n", "]t", function()
			todo_comments.jump_next()
		end, { desc = "Next TODO comment" })

		keymap.set("n", "[t", function()
			todo_comments.jump_prev()
		end, { desc = "Previous TODO comment" })

		-- HACK: This is a hack
		--
		-- BUG: This is a bug
		--
		-- TODO: another example
		todo_comments.setup()
	end,
}
