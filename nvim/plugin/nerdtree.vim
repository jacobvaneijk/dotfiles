" Open NERDTree automatically when Vim starts up on opening a directory.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exec "WildignoreFromGitignore" | exec "NERDTree" argv()[0] | wincmd p | ene | endif

" Close Vim if the only window left open is NERDTree.
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Toggle NERDTree with ^n.
map <C-n> :NERDTreeToggle<CR>

" Focus NERDTree with F2.
map <F2> :NERDTreeFocus<CR>

" Show hidden files by default.
let NERDTreeShowHidden=1

" Hide the annoying help message.
let NERDTreeMinimalUI=1

" Hide files specified in wildignore.
let NERDTreeRespectWildIgnore=1

" Gophers look best in blue.
let g:NERDTreeExtensionHighlightColor = {}
let g:NERDTreeExtensionHighlightColor["go"] = "689FB6"

" Equalize the space before and after the Glyph.
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ''
