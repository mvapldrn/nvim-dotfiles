return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			"                                            ",
			" _______             ____   ____.__         ",
			" \\      \\   ____  ___\\   \\ /   /|__| _____  ",
			" /   |   \\_/ __ \\/  _ \\   Y   / |  |/     \\ ",
			"/    |    \\  ___(  <_> )     /  |  |  Y Y  \\",
			"\\____|__  /\\___  >____/ \\___/   |__|__|_|  /",
			"        \\/     \\/                        \\/ ",
			"                               (c)MvA       ",
		}

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("e", "  New File", "<cmd>ene<CR>"),
			dashboard.button("SPC ee", "󰛔  Toggle File Explorer", "<cmd>NvimTreeToggle<CR>"),
			dashboard.button("SPC ff", "󰈞  Fuzzy Find File", "<cmd>Telescope find_files<CR>"),
			dashboard.button("SPC fs", "  Find String in File", "<cmd>Telescope live_grep<CR>"),
			dashboard.button("SPC wr", "󰁯  WorkSession Restore", "<cmd>SessionRestore<CR>"),
			dashboard.button("q", "󰿅  Quit", "<cmd>qa<CR>"),
		}

		-- Send config to alpha
		alpha.setup(dashboard.opts)

		-- No folding on this buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
