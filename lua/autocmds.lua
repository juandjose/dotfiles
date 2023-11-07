local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local yankGrp = augroup('YankHighlight', { clear = true })
autocmd('TextYankPost', {
    command = 'silent! lua vim.highlight.on_yank()',
    group = yankGrp
})

local cursorGrp = augroup('CursorLine', { clear = true })
autocmd('WinEnter', {
    pattern = '*',
    command = 'set cul',
    group = cursorGrp
})
autocmd('WinLeave', {
    pattern = '*',
    command = 'set nocul',
    group = cursorGrp
})

local numberGrp = augroup('RelativeNumber', { clear = true })
autocmd('WinEnter', {
    pattern = '*',
    command = 'set rnu',
    group = numberGrp
})
autocmd('WinLeave', {
    pattern = '*',
    command = 'set nornu',
    group = numberGrp
})

local filetpGrp = augroup('FileTypeDetect', { clear = true })
autocmd({ 'BufRead', 'BufNewFile' }, {
    pattern = '*.h',
    command = 'setfiletype c',
    group = filetpGrp
})

autocmd('FileType', {
    pattern = '*',
    command = 'set fo-=cro'
})

autocmd('BufWritePre', {
    pattern = '*',
    command = [[
         %s/\s\+$//e
    ]]
})
