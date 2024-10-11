-- MY LEADER IS
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- Clear search
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlight" })

-- window/split management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- tab management
keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "New tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close tab" })
keymap.set("n", "<tab>", "<cmd>tabn<CR>", { desc = "Next tab" })
keymap.set("n", "<S-tab>", "<cmd>tabp<CR>", { desc = "Previous tab" })

-- Movement between tabs and windows
keymap.set("n", "<C-Right>", "<cmd>tabn<CR>", { desc = "Next tab" })
keymap.set("n", "<C-Left>", "<cmd>tabp<CR>", { desc = "Previous tab" })
keymap.set("n", "<S-Right>", "<C-w>l", { desc = "Move window right" })
keymap.set("n", "<S-Left>", "<C-w>h", { desc = "Move window left" })
keymap.set("n", "<S-Up>", "<C-w>k", { desc = "Move window up" })
keymap.set("n", "<S-Down>", "<C-w>j", { desc = "Move window down" })

-- Better indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- better up/down (includes number, 10<Down> is 10 lines down)
keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
keymap.set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
keymap.set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

-- Resize window using <alt> arrow keys
keymap.set("n", "<A-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
keymap.set("n", "<A-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
keymap.set("n", "<A-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
keymap.set("n", "<A-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Move Lines
keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- save file (for those who like Ctrl-S in all modes)
keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- commenting
keymap.set("n", "gco", "o<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Below" })
keymap.set("n", "gcO", "O<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Above" })

-- lazy
keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- new file
keymap.set("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })

keymap.set("n", "<leader>xl", "<cmd>lopen<cr>", { desc = "Location List" })
keymap.set("n", "<leader>xq", "<cmd>copen<cr>", { desc = "Quickfix List" })

keymap.set("n", "[q", vim.cmd.cprev, { desc = "Previous Quickfix" })
keymap.set("n", "]q", vim.cmd.cnext, { desc = "Next Quickfix" })

-- diagnostic
--local diagnostic_goto = function(next, severity)
--  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
--  severity = severity and vim.diagnostic.severity[severity] or nil
--  return function()
--    go({ severity = severity })
--  end
--end
--keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
--keymap.set("n", "]d", diagnostic_goto(true), { desc = "Next Diagnostic" })
--keymap.set("n", "[d", diagnostic_goto(false), { desc = "Prev Diagnostic" })
--keymap.set("n", "]e", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
--keymap.set("n", "[e", diagnostic_goto(false, "ERROR"), { desc = "Prev Error" })
--keymap.set("n", "]w", diagnostic_goto(true, "WARN"), { desc = "Next Warning" })
--keymap.set("n", "[w", diagnostic_goto(false, "WARN"), { desc = "Prev Warning" })

-- quit
keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit All" })


