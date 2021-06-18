local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Lua guide
  use 'nanotee/nvim-lua-guide'

  -- Explorer & Devicons
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'

  -- Galaxyline
  use 'glepnir/galaxyline.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- Completion & vsnip
  use 'hrsh7th/nvim-compe'
  use 'hrsh7th/vim-vsnip'

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'

  use 'onsails/lspkind-nvim'
  use 'kosayoda/nvim-lightbulb'
  use 'mfussenegger/nvim-jdtls'
  use 'mfussenegger/nvim-dap'

  -- Colorscheme & Colorizer
  use 'christianchiarulli/nvcode-color-schemes.vim'
  use 'norcalli/nvim-colorizer.lua'

  --
  use 'kevinhwang91/nvim-bqf'
  use 'unblevable/quick-scope'
  use 'airblade/vim-rooter'
end)
