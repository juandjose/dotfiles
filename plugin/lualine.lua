local status, lualine = pcall(require, 'lualine')

if not status then
    print('lualine not installed')
    return
end

local custom_gruvbox = require('lualine.themes.gruvbox_dark')

local colors = {
    none = 'none',
    light = '#282828'
}

-- b section
custom_gruvbox.normal.b.bg = colors.light
custom_gruvbox.insert.b.bg = colors.light
custom_gruvbox.visual.b.bg = colors.light
custom_gruvbox.replace.b.bg = colors.light
custom_gruvbox.command.b.bg = colors.light

-- c section
custom_gruvbox.normal.c.bg = colors.none
custom_gruvbox.insert.c.bg = colors.none
custom_gruvbox.visual.c.bg = colors.none
custom_gruvbox.replace.c.bg = colors.none
custom_gruvbox.command.c.bg = colors.none

lualine.setup {
    options = {
        icons_enabled = true,
        theme = custom_gruvbox,
        component_separators = {
            left = ' ',
            right = ''
        },
        section_separators = {
            left = '',
            right = ''
        },
        disabled_filetypes = {
            'packer',
            'NvimTree',
            'TelescopePrompt',
        }
    },

    sections = {
        lualine_a = { {
            'mode',
            separator = {
                left = '█',
                right = ' '
            }
        },
        },
        lualine_b = { 'filename', 'branch' },
        lualine_c = { 'fileformat' },
        lualine_x = {},
        lualine_y = { 'filetype', 'progress' },
        lualine_z = {
            -- { 'location', separator = { left= '', right = '' } },
            { 'location', separator = { left= '', right = '█' } },
        },
    },

    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },

    tabline = {},
    winvar = {},
    inactive_winvar = {},
    extensions = {}
}
