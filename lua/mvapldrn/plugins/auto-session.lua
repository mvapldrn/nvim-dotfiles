return {
	"rmagatti/auto-session",

	enabled = true,

	config = function()
		local auto_session = require("auto-session")

		auto_session.setup({
			auto_restore_enabled = false,
			auto_session_suppress_dirs = { "~/", "~/Downloads" },
		})

	end,

    keys = {
        {"<leader>wr", "<cmd>SessionRestore<CR>", desc = "Restore session for CWD" },
        {"<leader>ws", "<cmd>SessionSave<CR>", desc = "Save session for autosession root dir" },
    }
}
