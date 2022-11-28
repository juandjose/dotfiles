local opt = vim.opt
local g = vim.g

g.mapleader = ' '

-- numbers
opt.number = true

-- wrap
opt.wrap = false
opt.whichwrap:append "<>[]hl"

-- scroll
-- opt.scrolloff = 10
-- opt.sidescrolloff = 10

-- signcolumn
opt.signcolumn = 'yes:1'
opt.fillchars = { eob = " "}

-- cursor
opt.cursorline = true
opt.guicursor ='n-v-c-sm:blinkon100,i-ci-ve:blinkon100,r-cr-o:hor20'

-- statusline
opt.ruler = false
opt.laststatus = 3

-- command
-- opt.cmdheight = 0
opt.showmode = false
opt.cmdwinheight = 5

-- other
opt.clipboard = 'unnamed'
opt.mouse = ''
opt.updatetime = 100
-- opt.undofile = true

-- indent
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- search
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

-- colorscheme
opt.termguicolors = true
opt.background = 'dark'

