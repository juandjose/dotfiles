local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- highlight on yank
local yankGrp = augroup('YankHighlight', { clear = true })

autocmd('TextYankPost', {
    command = 'silent! lua vim.highlight.on_yank()',
    group = yankGrp
})

-- toggle cursorline
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

-- file type detect
local filetpGrp = augroup('FileTypeDetect', { clear = true })

autocmd({ 'BufRead', 'BufNewFile' }, {
    pattern = '*.h',
    command = 'setfiletype c',
    group = filetpGrp
})

autocmd({ 'BufRead', 'BufNewFile'}, {
    pattern = '*.js',
    command = [[
        hi! link @variable GruvboxBlue
        hi! link @variable.builtin GruvboxBlue
    ]],
    group = filetpGrp
})

autocmd({ 'BufRead', 'BufNewFile'}, {
    pattern = '*.py',
    command = [[
        hi! link @include GruvboxRed
    ]],
    group = filetpGrp
})

-- don't autocomment nextline
autocmd('FileType', {
    pattern = '*',
    command = 'set fo-=cro'
})

-- clear cmdline
autocmd('CmdLineLeave', {
    command = [[
        echo ''
    ]]
})

-- trim
autocmd('BufWritePre', {
    pattern = '*',
    command = [[
         %s/\s\+$//e
    ]]
})

-- remember last location
-- autocmd('BufReadPost', {
--     command = [[
--         if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif
--     ]]
-- })
