local status, telescope = pcall(require, 'telescope')

if not status then
    print('no telescope')
    return
end

telescope.setup {
    defaults = {
        file_ignore_patterns = { "node_modules" },
        prompt_prefix = "   ",
        -- selection_caret = "  ",
        -- entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
            horizontal = {
                prompt_position = "top",
                preview_width = 0.55,
                results_width = 0.8,
            },
            vertical = {
                mirror = false,
            },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
        },
        -- path_display = { "truncate" },
    },
    extensions = {
        fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true,  -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
        }
    }
}

-- telescope.load_extension('fzf')

local builtin = require('telescope.builtin')
local keymap = vim.keymap.set
local highlight = vim.api.nvim_set_hl

-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap('n', '<c-p>', builtin.find_files, {})
keymap('n', '<leader>fg', builtin.live_grep, {})
keymap('n', '<leader>fb', builtin.buffers, {})
keymap('n', '<leader>fo', builtin.help_tags, {})
keymap('n', '<leader>fh', builtin.highlights, {})
keymap('n', '<leader>fk', builtin.keymaps, {})

highlight(0, 'TelescopePromptPrefix', { link = 'GruvboxBlue' })
highlight(0, 'TelescopeSelectionCaret', { link = 'GruvboxBlue' })
