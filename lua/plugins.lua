local status, packer = pcall(require, 'packer')

if not status then
    print('Packer not installed')
    return
end

return packer.startup(function()
    -- packer can manage itself
    use('wbthomason/packer.nvim')

    -- colorscheme
    use('ellisonleao/gruvbox.nvim')

    -- tools
    use('kuangliu/vim-easymotion')
    use('tpope/vim-commentary')
    use('tpope/vim-surround')
    use('windwp/nvim-autopairs')
    use('vim-scripts/ReplaceWithRegister')
    use('norcalli/nvim-colorizer.lua')

    -- treesitter
    -- use('nvim-treesitter/nvim-treesitter')
    -- use('nvim-treesitter/playground')

    --    use('mbbill/undotree')
    use('lukas-reineke/indent-blankline.nvim')
    use('nvim-tree/nvim-tree.lua')

    use('nvim-lualine/lualine.nvim')
    use('kyazdani42/nvim-web-devicons')

    use('neovim/nvim-lspconfig')
    use('williamboman/mason.nvim')
    use('williamboman/mason-lspconfig.nvim')

    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-nvim-lsp-document-symbol')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-path')
    use('hrsh7th/cmp-cmdline')
    use('hrsh7th/nvim-cmp')

    use('L3MON4D3/LuaSnip')
    use('rafamadriz/friendly-snippets')

    -- use('akinsho/bufferline.nvim')
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use('nvim-lua/plenary.nvim')
    use('nvim-telescope/telescope.nvim')
    -- use('junegunn/fzf.vim')

    -- use('nvim-telescope/telescope-fzf-native.nvim')
    -- use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
    --   use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  --  use('nvim-telescope/telescope-fzy-native.nvim')
end)
