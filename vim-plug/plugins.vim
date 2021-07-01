" Automatic installation
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent execute '!curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/autoload/plugged')

" Autopairs
Plug 'jiangmiao/auto-pairs'

" Best syntax and indentation support
Plug 'sheerun/vim-polyglot'

" OneDark
Plug 'joshdick/onedark.vim'

" Coc.nvim
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Colorizer
Plug 'norcalli/nvim-colorizer.lua'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Commenrary
Plug 'tpope/vim-commentary'

" Ranger
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

" Snippets
Plug 'honza/vim-snippets'

call plug#end()
