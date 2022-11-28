require("gruvbox").setup({
    undercurl = true,
    underline = true,
    bold = false,
    italic = false,
    strikethrough = false,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = false,
    contrast = "hard",
    palette_overrides = {
        dark1 = "#282828",
    },

    overrides = {
        CursorLineNr = {fg = '#ebdbb2'},
        CursorLineSign = {bg = "#282828"},

        StatusLine = {bg = "none"},

        ErrorMsg = {bg = "none", fg = "#fb4934"},
        Question = { bg="none", fg="#ebdbb2"},

        -- DiagnosticHint = {bg = "none" },
        -- DiagnosticWarn = {bg = "none" },
        -- DiagnosticInfo = {bg = "none" },
        -- DiagnosticError = {bg = "none" },
    },

    dim_inactive = false,
    transparent_mode = false,
})

vim.cmd [[
    colorscheme gruvbox
    "hi Normal guibg=NONE ctermbg=NONE
    hi clear SignColumn
    hi IncSearch term=reverse cterm=reverse ctermfg=208 ctermbg=235 gui=reverse guifg=#fe8019 guibg=#282828
    hi search term=reverse cterm=reverse ctermfg=214 ctermbg=235 gui=reverse guifg=#fabd2f guibg=#282828
]]
-- hi DiagnosticError guibg=NONE
-- hi DiagnosticWarn guibg=NONE
-- hi DiagnosticInfo guibg=NONE
-- hi DiagnosticHint guibg=NONE
local highlight = vim.api.nvim_set_hl

-- highlight(0, 'htmlTag', { link = "GruvboxFg3" })
-- highlight(0, 'htmlEndTag', { link = "GruvboxFg3" })
-- highlight(0, 'htmlTagName', { link = "GruvboxRed" })
-- highlight(0, 'htmlSpecialTagName', { link = "GruvboxRed" })
-- highlight(0, 'htmlArg', { link = "GruvboxYellow" })

-- highlight(0, 'cssCustomProp', { link = "GruvboxYellow" })
-- highlight(0, 'cssProp', { link = "GruvboxBlue" })
-- highlight(0, 'cssUnitDecorators', { link = "GruvboxGreen" })
-- highlight(0, 'cssClassName', { link = "GruvboxBlue" })
-- highlight(0, 'cssNoise', { link = "GruvboxFg3" })
-- highlight(0, 'cssAttrComma', { link = "GruvboxFg3" })
-- highlight(0, 'cssBraces', { link = "GruvboxFg3" })
-- highlight(0, 'cssPseudoClassId', { link = "GruvboxAqua" })
-- highlight(0, 'cssAttr', { link = "GruvboxOrange" })
-- highlight(0, 'cssFunctionName', { link = "GruvboxRed" })

highlight(0, 'IndentBlankLineContextChar', { link = 'GruvboxBg3' })
highlight(0, 'NvimTreeRootFolder', { link = 'GruvboxBg3' })

highlight(0, 'Pmenu', { link = 'Normal' })
highlight(0, 'EasyMotionTarget', { link = 'GruvboxRed' })
highlight(0, 'EasyMotionTarget2First', { link = 'GruvboxYellow' })
highlight(0, 'EasyMotionTarget2Second', { link = 'GruvboxYellow' })

highlight(0, 'CmpItemAbbrMatch', { link = 'GruvboxAquaBold' })
