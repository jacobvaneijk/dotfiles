" Set the leader.
let mapleader="\<Space>"

" Faster saving.
nnoremap <Leader>w :w<CR>
nnoremap <Leader>W :wa<CR>

" Turn off search highlight.
nnoremap <Leader><Esc> :nohlsearch<CR>

" Move around the windows with ^[hjkl].
map <silent> <C-h> <C-w>h
map <silent> <C-j> <C-w>j
map <silent> <C-k> <C-w>k
map <silent> <C-l> <C-w>l

" Make resizing windows a bit easier.
map <silent> + :res +5<CR>
map <silent> - :res -5<CR>
