return {
	"stevearc/conform.nvim",

	enabled = true,

	event = { "BufReadPre", "BufNewFile" },

	opts = {
		formatters_by_ft = {
			javascript = { "prettierd", "prettier", stop_after_first = true },
			--css = { "prettier" },
			--html = { "prettier" },
			--json = { "prettier" },
			--markdown = { "prettier" },
			lua = { "stylua" },
		},
		default_format_opts = {
			lsp_format = "fallback",
		},
		format_on_save = {
			lsp_fallback = false,
			async = false,
			timeout_ms = 1000,
		},
	},

	keys = {
		{
			"<leader>cf",
			function()
				require("conform").format({
					lsp_fallback = true,
					async = true,
					timeout_ms = 1000,
				})
			end,
			mode = "",
			desc = "Format file or range (in visual mode)",
		},
	},
}
