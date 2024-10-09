return {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "folke/todo-comments.nvim"
    },
    keys = {
        { "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", desc = "Diagnostics (trouble)" },
        { "<leader>xl", "<cmd>Trouble loclist toggle<CR>", desc = "Location list (trouble)" },
    }
}
