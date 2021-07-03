nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

let g:which_key_map =  {}

let g:which_key_map['/'] = [ ':call Comment()'                                 , 'comment' ]
let g:which_key_map['.'] = [ ':e $MYVIMRC'                                     , 'open init' ]

call which_key#register('<Space>', "g:which_key_map")
