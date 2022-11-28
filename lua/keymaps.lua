local opts = { noremap = true, silent = true }
local silent  = { silent = true }
local noremap = { noremap = true}
local expr = { expr = true }

local keymap = vim.api.nvim_set_keymap

vim.g.EasyMotion_do_mapping = 0
vim.g.EasyMotion_smartcase = 1

keymap('n', '<leader>c', '<cmd>let @/=""<CR>', noremap)

-- easy navigation
keymap('n', 'ó', '<cmd>e ~/Appdata/Local/nvim/lua/options.lua<CR>', opts)
keymap('n', '´k', '<cmd>e ~/Appdata/Local/nvim/lua/keymaps.lua<CR>', opts)
keymap('n', 'á', '<cmd>e ~/Appdata/Local/nvim/lua/autocmds.lua<CR>', opts)
keymap('n', '´p', '<cmd>e ~/Appdata/Local/nvim/lua/plugins.lua<CR>', opts)
keymap('n', '´P', '<cmd>e ~/Appdata/Local/nvim/plugin/<CR>', opts)

-- quick cmd
keymap('n', ';', ':', noremap)
keymap('n', ':', '.', noremap)
keymap('n', '.', ';', noremap)
keymap('n', '<CR>', '.', noremap)
keymap('v', ';', ':', noremap)
keymap('v', '<CR>', '.', noremap)
keymap('v', '.', ';', noremap)

-- windows
keymap('n', '<c-h>', '<c-w>h', opts)
keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', '<c-k>', '<c-w>k', opts)
keymap('n', '<c-l>', '<c-w>l', opts)
keymap('n', '<leader>sv', '<cmd>vsplit<CR><c-w>w<c-w>=', opts)
keymap('n', '<leader>ss', '<cmd>split<CR><c-w>w<c-w>=', opts)
keymap('n', '<leader>st', '<c-w>T', opts)
keymap('n', '<leader>se', '<c-w>=', opts)
keymap('n', '<leader>so', '<c-w>o', opts)

-- tabs
keymap('v', '<TAB>', '>gv_', opts)
keymap('v', '<S-TAB>', '<gv_', opts)

-- save
keymap('i', '<c-s>', '<c-o><cmd>update<CR>', opts)

-- select-all
keymap('n', '<c-a>', 'ggVG$', opts)
keymap('v', '<c-a>', '<esc>ggVG$', opts)

-- copy & cut
keymap('v', '<c-c>', '"+y', opts)
keymap('v', '<c-x>', '"+x', opts)
keymap('i', '<c-c>', '<c-o>"+yy', opts)

-- paste
keymap('n', 'p', 'gp', opts)
keymap('n', 'P', 'gP', opts)

-- yankn't
keymap('n', 'x', '"_x', opts)
keymap('n', 's', '"_s', opts)
keymap('v', 'x', '"_x', opts)
keymap('v', 's', '"_s', opts)
keymap('v', '<bs>', '"_x', opts)

-- aument & decrement
keymap('n', '+', '<c-a>', opts)
keymap('n', '-', '<c-x>', opts)

-- move line
keymap('n', 'J', '<cmd>m .+1<CR>==', opts)
keymap('n', 'K', '<cmd>m .-2<CR>==', opts)
keymap('v', 'J', ":m '>+1<CR><CR>gv=gv", opts)
keymap('v', 'K', ":m '<-2<CR><CR>gv=gv", opts)

-- disable
keymap('n', 'q:', '<nop>', opts)
keymap('n', 'Q', '<nop>', opts)
keymap('n', '<bs>', '<nop>', opts)
keymap('n', '<c-z>', '<nop>', opts)
keymap('v', '<c-z>', '<nop>', opts)
keymap('n', '<space>', '<nop>', opts)
keymap('i', '<c-a>', '<nop>', opts);

-- easymotion move to line
keymap('n', 'gj', '<Plug>(easymotion-j)', opts)
keymap('n', 'gk', '<Plug>(easymotion-k)', opts)
keymap('v', 'gj', '<Plug>(easymotion-j)', opts)
keymap('v', 'gk', '<Plug>(easymotion-k)', opts)
-- easymotion move to word
keymap('n', '<leader>w', '<Plug>(easymotion-w)', opts)
keymap('n', '<leader>b', '<Plug>(easymotion-b)', opts)
keymap('v', '<leader>w', '<Plug>(easymotion-w)', opts)
keymap('v', '<leader>b', '<Plug>(easymotion-b)', opts)

-- o-pending quote
keymap('o', 'iq', 'i"', opts)
keymap('o', 'aq', 'a"', opts)
keymap('v', 'iq', 'i"', opts)
keymap('v', 'aq', 'a"', opts)
-- o-pending curly braces
keymap('o', 'ic', 'i{', opts)
keymap('o', 'ac', 'a{', opts)
keymap('v', 'ic', 'i{', opts)
keymap('v', 'ac', 'a{', opts)

-- better-search
keymap('n', 'n', 'nzz', opts)
keymap('n', 'N', 'Nzz', opts)

-- better-scrolling
keymap('n', '<c-u>', '<c-u>zz', opts)
keymap('n', '<c-d>', '<c-d>zz', opts)

keymap('v', '<c-u>', '<c-u>zz', opts)
keymap('v', '<c-d>', '<c-d>zz', opts)
