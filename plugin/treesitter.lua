-- require'nvim-treesitter.configs'.setup {
--     ensure_installed = {
--         -- "c",
--         -- "cpp",
--         "lua",
--         -- "rust",
--         -- "javascript",
--         -- "typescript",
--         -- "python",
--         -- "html",
--         -- "css",
--         -- "toml",
--         -- "json",
--         -- "php",
--         -- "markdown"
--     },
--     sync_install = false,
--     auto_install = false,
--     -- ignore_install = { "javascript" },

--     -- If you need to change the installation directory of the parsers (see -> Advanced Setup)
--     -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

--     highlight = {
--         enable = true,
--         use_languagetree = true,

--         -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
--         -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
--         -- the name of the parser)
--         -- list of language that will be disabled
--         -- disable = { "c", "rust" },
--         -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
--         disable = function(lang, buf)
--             local max_filesize = 100 * 1024 -- 100 KB
--             local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
--             if ok and stats and stats.size > max_filesize then
--                 return true
--             end
--         end,

--         additional_vim_regex_highlighting = false,
--     },

--     indent = {
--         enable = false,
--     },

--     playground = {
--         enable = true,
--         disable = {},
--         updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
--         persist_queries = false, -- Whether the query persists across vim sessions
--         keybindings = {
--             toggle_query_editor = 'o',
--             toggle_hl_groups = 'i',
--             toggle_injected_languages = 't',
--             toggle_anonymous_nodes = 'a',
--             toggle_language_display = 'I',
--             focus_language = 'f',
--             unfocus_language = 'F',
--             update = 'R',
--             goto_node = '<cr>',
--             show_help = '?',
--         },
--     }
-- }

-- vim.api.nvim_set_hl(0, "@method.call", { link = "GruvboxYellow"})
-- vim.api.nvim_set_hl(0, "@method", { link = "GruvboxYellow"})

-- vim.api.nvim_set_hl(0, "@function", { link = "GruvboxYellow"})
-- vim.api.nvim_set_hl(0, "@function.call", { link = "GruvboxYellow"})
-- vim.api.nvim_set_hl(0, "@function.macro", { link = "GruvboxYellow"})
-- vim.api.nvim_set_hl(0, "@function.builtin", { link = "GruvboxYellow"})

-- vim.api.nvim_set_hl(0, "@variable", { link = "Normal"})
-- vim.api.nvim_set_hl(0, "@variable.builtin", { link = "Normal"})

-- vim.api.nvim_set_hl(0, "@punctuation.bracket", { link = "GruvboxFg1"})
-- vim.api.nvim_set_hl(0, "@punctuation.delimiter", { link = "GruvboxFg3"})
-- vim.api.nvim_set_hl(0, "@punctuation.special", { link = "GruvboxFg4"})

-- vim.api.nvim_set_hl(0, "@operator", { link = "GruvboxAqua"})
-- vim.api.nvim_set_hl(0, "@paramater", { link = "Normal"})

-- vim.api.nvim_set_hl(0, "@type", { link = "GruvboxRed"})
-- vim.api.nvim_set_hl(0, "@type.builtin", { link = "GruvboxYellow"})

-- vim.api.nvim_set_hl(0, "@constant.builtin", { link = "GruvboxRed"})
-- vim.api.nvim_set_hl(0, "@string.escape", { link = "GruvboxPurple"})

-- vim.api.nvim_set_hl(0, "@tag", { link = "GruvboxRed"})
-- vim.api.nvim_set_hl(0, "@tag.delimiter", { link = "GruvboxFg2"})
-- vim.api.nvim_set_hl(0, "@tag.attribute", { link = "GruvboxYellow"})

-- vim.api.nvim_set_hl(0, "@string.uri", { link = "GruvboxGreen"})
-- vim.api.nvim_set_hl(0, "@text.uri", { link = "GruvboxGreen"})

-- vim.api.nvim_set_keymap('n', '<leader>y', '<cmd>TSHighlightCapturesUnderCursor<CR>', { noremap = true, silent = true })
