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

call plug#end()
