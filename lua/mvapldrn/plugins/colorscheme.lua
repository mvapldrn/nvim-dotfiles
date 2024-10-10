return {
	"eddyekofo94/gruvbox-flat.nvim",
	priority = 1000,
	enabled = true,
	config = function()
		vim.g.gruvbox_flat_style = "dark"
		vim.g.gruvbox_italic_comments = true
		vim.g.gruvbox_transparent = true

		vim.cmd([[colorscheme gruvbox-flat]])

		-- Examples of changing group colors
		vim.cmd([[hi LineNr guifg=#808080]])
		vim.cmd([[hi CursorLineNr guifg=#f0f0f0]])
		vim.cmd([[hi Comment guifg=#e0e030]])

		-- To get bufferline correct
		--vim.cmd([[hi BufferLineFill guifg=#000000]])
		--vim.cmd([[hi BufferLineSeperator guifg=#000000]])
		--vim.cmd([[hi BufferLineSeperatorSelected guifg=#000000]])
	end,
}
