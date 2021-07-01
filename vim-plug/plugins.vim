" Automatic installation
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent execute '!curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Treesitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

  " Autopairs
  Plug 'jiangmiao/auto-pairs'

  " Colorscheme
  Plug 'folke/tokyonight.nvim'

  " Galaxyline
  Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
  Plug 'kyazdani42/nvim-web-devicons' " lua

  " Barbar
  Plug 'romgrk/barbar.nvim'

  " Coc.nvim
  " Use release branch (recommend)
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Colorizer
  Plug 'norcalli/nvim-colorizer.lua'

  " Commenrary
  Plug 'tpope/vim-commentary'

  " Ranger
  Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

  " Snippets
  Plug 'honza/vim-snippets'

  " Nvim-tree
  Plug 'kyazdani42/nvim-tree.lua'

  " GIT
  Plug 'nvim-lua/plenary.nvim'
  Plug 'lewis6991/gitsigns.nvim'

call plug#end()
