-- require("bufferline").setup{
--     options = {
--         -- indicator_icon = "▎",
--         modified_icon = "•",
--         -- buffer_close_icon = "",
--         -- close_icon = "",
--         -- left_trunc_marker = "",
--         -- right_trunc_marker = "",
--         -- separator_style = "slant" | "thick" | "thin" | { 'any', 'any' },
--         max_name_length = 15,
--         max_prefix_length = 5,
--         diagnostics = "nvim_lsp",
--         show_buffer_icons = true,
--         show_buffer_close_icons = false,
--         show_close_icon = false,
--         persist_buffer_sort = true,
--         enforce_regular_tabs = true,
--         separator_style = "padded_slant"
--         -- separator_style = "slant" | "thick" | "thin" | { 'any', 'any' },
--         -- separator_style = "slant"
--         -- diagnostics_indicator = function(count, level)
--         -- local icon = level:match("error") and "" or ""
--         -- return icon .. count
--         -- end,
--     },
--     highlights = {
--         buffer_selected = {
--             italic = false,
--         },
--         diagnostic_selected = {
--             italic = false
--         },
--         hint_selected = {
--             italic = false
--         },
--         pick_selected = {
--             italic = false,
--             -- fg = '#ffffff',
--         },
--         pick_visible = {
--             italic = false,
--         },
--         pick = {
--             italic = false
--         },
--         tab = {
--             -- fg = '#ffffff',
--             bg = 'none'
--         },
--         separator_selected = {
--             fg = 'none',
--             bg = 'none'
--         },
--         -- separator_visible = {
--         --     fg = 'none',
--         --     bg = '#ffffff'
--         -- },
--         -- separator = {
--         --     fg = '#ffffff',
--         --     bg = '#ffffff'
--         -- },
--         -- background = {
--         --     fg = '#ffffff',
--         --     bg = '#ffffff',
--         -- }
--     },
-- }
-- -- highlight(0, 'BuffreLineBackground', { link = "GruvboxBg4" })