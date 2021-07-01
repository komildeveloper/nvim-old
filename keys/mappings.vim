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
" nnoremap <TAB> :tabn<CR>
" SHIFT-TAB will go back
" nnoremap <S-TAB> :tabp<CR>

nnoremap <silent> <TAB> :BufferNext<CR>
nnoremap <silent> <S-TAB> :BufferPrevious<CR>

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

" Space not working in normal mode
nnoremap <silent> <Space> :noh<CR>

nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>
