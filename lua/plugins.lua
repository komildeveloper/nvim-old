local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
        'git', 'clone', 'https://github.com/wbthomason/packer.nvim',
        install_path
    })
    execute 'packadd packer.nvim'
end

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Lua guide
    use 'nanotee/nvim-lua-guide'

    -- Explorer & Devicons
    use 'kyazdani42/nvim-tree.lua'
    use 'kyazdani42/nvim-web-devicons'
    use 'ryanoasis/vim-devicons'

    -- Status Line & Bufferline
    use 'glepnir/galaxyline.nvim'
    use 'romgrk/barbar.nvim'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'glepnir/lspsaga.nvim'
    use 'onsails/lspkind-nvim'
    use 'kosayoda/nvim-lightbulb'
    use 'mfussenegger/nvim-jdtls'

    -- Debugging
    use 'mfussenegger/nvim-dap'

    -- Completion & vsnip
    use 'hrsh7th/nvim-compe'
    use 'hrsh7th/vim-vsnip'

    -- Treesitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'nvim-treesitter/playground'
    use 'p00f/nvim-ts-rainbow'

    -- Telescope
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

    -- Which key
    use 'folke/which-key.nvim'

    -- Markdown preview
    use {
        'iamcco/markdown-preview.nvim',
        run = "cd app && npm install",
        ft = "markdown",
    }

    -- Color
    use 'christianchiarulli/nvcode-color-schemes.vim'
    use 'norcalli/nvim-colorizer.lua'

    -- GIT
    use 'lewis6991/gitsigns.nvim'
    use 'TimUntersberger/neogit'

    -- Dashboard
    use 'glepnir/dashboard-nvim'

    -- General Plugins
    use 'kevinhwang91/nvim-bqf'
    use 'unblevable/quick-scope'
    use 'airblade/vim-rooter'
    use 'windwp/nvim-autopairs'
    use 'b3nj5m1n/kommentary'
    use 'lukas-reineke/indent-blankline.nvim'
end)
