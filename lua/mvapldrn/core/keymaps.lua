vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", {desc = "Exit insert mode with jk"})

keymap.set("n", "<leader>nh", ":nohl<CR>", {desc = "Clear search highlight"})

-- window/split management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically"})
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally"})
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size"})
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split"})

-- tab management
keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "New tab"})
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close tab"})
keymap.set("n", "<tab>",      "<cmd>tabn<CR>", { desc = "Next tab"})
keymap.set("n", "<S-tab>",    "<cmd>tabp<CR>", { desc = "Previous tab"})

-- Movement between tabs and windows
keymap.set("n", "<C-Right>",  "<cmd>tabn<CR>", { desc = "Next tab"})
keymap.set("n", "<C-Left>",   "<cmd>tabp<CR>", { desc = "Previous tab"})
keymap.set("n", "<S-Right>",  "<C-w>l", { desc = "Move window right"})
keymap.set("n", "<S-Left>",   "<C-w>h", { desc = "Move window left"})
keymap.set("n", "<S-Up>",     "<C-w>k", { desc = "Move window up"})
keymap.set("n", "<S-Down>",   "<C-w>j", { desc = "Move window down"})

