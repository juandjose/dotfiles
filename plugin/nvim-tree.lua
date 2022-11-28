vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- vim.g.nvim_tree_root_folder_modifier = table.concat {
--     ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??"
-- }

require("nvim-tree").setup{
    view = {
        width = 30,
        -- height = 30,
        hide_root_folder = true,
        side = "right",
        mappings = {
            list = {
                { key = "<c-e>", action = "close" },
            },
        },
    },
    actions = {
        open_file = {
            quit_on_open = true,
        }
    }
}

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap('n', '<c-e>', '<cmd>NvimTreeToggle<CR>', opts)
-- keymap('n', '<leader>o', '<cmd>NvimTreeFocus<CR>', opts)
