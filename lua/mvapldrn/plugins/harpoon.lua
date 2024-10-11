return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },

	enabled = false,

	-- BUG: contains error

	opts = function()
		local harpoon = require("harpoon")

		harpoon:setup()

		-- Basic telescope setup
		local conf = require("telescope.config").values
		local function toggle_telescope(harpoon_files)
			local file_paths = {}
			for _, item in ipairs(harpoon_files.items) do
				table.insert(file_paths, item.value)
			end

			require("telescope.pickers")
				.new({}, {
					prompt_title = "Harpoon",
					finder = require("telescope.finders").new_table({
						results = file_paths,
					}),
					previewer = conf.file_previewer({}),
					sorter = conf.generic_sorter({}),
				})
				:find()
		end
	end,

	keys = {
		{
			"<leader>ha",
			function()
				local harpoon = require("harpoon")
				harpoon:list():add()
			end,
			desc = "Add to Harpoon list",
		},
		{
			"<leader>hl",
			function()
				local harpoon = require("harpoon")
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end,
			desc = "Open Harpoon list",
		},
		{
			"<leader>fh",
			function()
				local harpoon = require("harpoon")
				toggle_telescope(harpoon:list())
			end,
			desc = "Open Harpoon list",
		},
		{
			"<leader>hp",
			function()
				local harpoon = require("harpoon")
				harpoon:list():prev()
			end,
			desc = "Go to previous file in Harpoon list",
		},
		{
			"<leader>hn",
			function()
				local harpoon = require("harpoon")
				harpoon:list():next()
			end,
			desc = "Go to next file in Harpoon list",
		},
	},
}
