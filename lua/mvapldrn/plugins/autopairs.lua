return {
	"windwp/nvim-autopairs",
	dependencies = { "hrsh7th/nvim-cmp" },

	enabled = true,

	event = { "InsertEnter" },

	config = function()
		local autopairs = require("nvim-autopairs")

		-- TODO: Example todo
		autopairs.setup({
			check_ts = true, -- enable treesitter
			ts_config = {
				lua = { "string" }, -- dont add pairs in lua string treesitter nodes
				javascript = { "template_string" }, -- dont add pairs in javascript template_string mode
				java = false, -- dont check treesitter on java
			},
		})

		local cmp_autopairs = require("nvim-autopairs.completion.cmp")

		local cmp = require("cmp")

		cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
	end,
}
