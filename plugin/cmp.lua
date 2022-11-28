local status, cmp = pcall(require, 'cmp')

if not status then
    return
end

local luasnip = require("luasnip")

require('luasnip.loaders.from_vscode').lazy_load()

local select_opts = {behavior = cmp.SelectBehavior.Select}

local sign = function(opts)
    vim.fn.sign_define(opts.name, {
        texthl = opts.name,
        text = opts.text,
        numhl = ''
    })
end

-- lspSymbol("Error", "")
-- lspSymbol("Info", "")
-- lspSymbol("Hint", "")
-- lspSymbol("Warn", "")

-- sign({name = 'DiagnosticSignError', text = ''})
-- sign({name = 'DiagnosticSignWarn', text = ''})
-- sign({name = 'DiagnosticSignHint', text = ''})
-- sign({name = 'DiagnosticSignInfo', text = ''})

sign({name = 'DiagnosticSignError', text = ''})
sign({name = 'DiagnosticSignWarn', text = ''})
sign({name = 'DiagnosticSignHint', text = ''})
sign({name = 'DiagnosticSignInfo', text = ''})

local function border(hl_name)
    return {
        { "╭", hl_name },
        { "─", hl_name },
        { "╮", hl_name },
        { "│", hl_name },
        { "╯", hl_name },
        { "─", hl_name },
        { "╰", hl_name },
        { "│", hl_name },
    }
end

local kind_icons = {

    Text = '',
    Function = '',
    Method = '',
    Constructor = '',
    Field = '',
    Variable = '',
    Class = '',
    Interface = '',
    Module = '',
    Property ='',
    Unit = '',
    Value = '',
    Enum ='',
    Keyword = '',
    Snippet = '',
    Color = '',
    File = '',
    Reference = '',
    Folder = '',
    EnumMember = '',
    Constant ='',
    Struct = '',
    Event = '',
    Operator = '',
    TypeParameter = '',
}

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },

    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
        -- completion = {
        --     border = border "CmpBorder",
        --     winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
        -- },
        -- documentation = {
        --     border = border "CmpDocBorder",
        -- },
    },

    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<TAB>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ['<Up>'] = cmp.mapping.select_prev_item(select_opts),
        ['<Down>'] = cmp.mapping.select_next_item(select_opts),
        -- ['<TAB>'] = cmp.mapping(function(fallback)
        --     if luasnip.jumpable(1) then
        --         luasnip.jump(1)
        --     else
        --         fallback()
        --     end
        -- end, {'i', 's'}),
        -- ['<S-TAB>'] = cmp.mapping(function(fallback)
        --     if luasnip.jumpable(-1) then
        --         luasnip.jump(-1)
        --     else
        --         fallback()
        --     end
        -- end, {'i', 's'}),
    }),

    formatting = {
        fields = { "kind", "abbr", "menu" },
        -- fields = { "kind", "abbr", "menu" },
        format = function(entry, vim_item)
            -- Kind icons
            vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
            -- vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
            vim_item.menu = ({
                nvim_lsp = "[LSP]",
                luasnip = "[Snippet]",
                buffer = "[Buffer]",
                path = "[Path]",
            })[entry.source.name]
            return vim_item
        end,
    },
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    }, {
        { name = 'buffer' },
    })
})

-- Set configuration for specific filetype.
-- cmp.setup.filetype('gitcommit', {
--     sources = cmp.config.sources({
--         { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
--     }, {
--         { name = 'buffer' },
--     })
-- })

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
require('cmp').setup.cmdline('/', {
  sources = cmp.config.sources({
    { name = 'nvim_lsp_document_symbol' }
  }, {
    { name = 'buffer' }
  })
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    }),
})

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.

-- require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
--     capabilities = capabilities
-- }

require('lspconfig')['pyright'].setup{
    capabilities = capabilities
}

require('lspconfig')['tsserver'].setup{
    capabilities = capabilities
}
-- require('lspconfig')['tsserver'].setup{
--     capabilities = capabilities
-- }


-- require('lspconfig')['emmet-ls'].setup{
--     capabilities = capabilities
-- }
