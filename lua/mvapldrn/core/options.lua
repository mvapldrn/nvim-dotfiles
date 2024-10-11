
-- Vims file explorere (which we will not use)
vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- === UI ===

-- Line numbers
opt.relativenumber = true -- Relative line numbers enabled
opt.number = true -- Line numbers enabled

opt.wrap = false -- No wrapping of text

-- search options
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you inlcude mixed case in your search, assumes you want case sensitivity

opt.cursorline = true -- highlighting on the current line

-- turn on termguicolors
opt.termguicolors = true
opt.background = "dark" -- Colorschemes that support light vs dark, choose dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- How characters look
opt.fillchars = {
    fold = ".",
    foldopen = "-",
    foldclose = "+",
    foldsep = "|",
    diff = "-",
    msgsep = " ",
    eob = "#",
}

-- Folding

opt.scrolloff = 4 -- lines of context (on top and bottom)

opt.smoothscroll = true


-- === EDITING ===

-- tabs & indentation
opt.tabstop = 4 -- 4 spaces for tabs
opt.shiftwidth = 4 -- 4 spaces for indent width
opt.expandtab = true -- expand tabs to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- Cliboard
opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sync with system clipboard

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

opt.undolevels = 10000 -- enough undo for everyone


