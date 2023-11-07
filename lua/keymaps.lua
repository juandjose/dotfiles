vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>c', '<cmd>let @/=""<CR>', noremap)

vim.keymap.set({'n', 'v'}, 'x', '"_x')
vim.keymap.set({'n', 'v'}, 's', '"_s')

vim.keymap.set('n', '<c-d>', '<c-d>zz')
vim.keymap.set('n', '<c-u>', '<c-u>zz')

vim.keymap.set('n', 'q:', '<nop>', opts)
vim.keymap.set('n', 'Q', '<nop>', opts)
vim.keymap.set('n', '<c-z>', '<nop>', opts)

vim.cmd[[
    noremap! <C-BS> <C-w>
    noremap! <C-h> <C-w>
]]
