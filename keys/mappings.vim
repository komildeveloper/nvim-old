" resize windows w/ ctrl&arrow keys
nnoremap <silent> <C-Down>    :resize -1<CR>
nnoremap <silent> <C-Up>  :resize +1<CR>
nnoremap <silent> <C-Right>  :vertical resize -2<CR>
nnoremap <silent> <C-Left> :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>
inoremap kk <Esc>
inoremap jj <Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> gt
" SHIFT-TAB will go back
nnoremap <S-TAB> gT

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Lexplore
nnoremap <silent> <Leader>e :Lexplore<CR>

" No spaces
nnoremap <silent> <Space> :noh<CR>
