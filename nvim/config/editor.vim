" Ocean Next
colorscheme base16-ocean

" Set the shell to zsh.
set shell=/bin/zsh

" Use system clipboard.
set clipboard+=unnamedplus

" Show line numbers.
set number

" Set the maximum width of text to 80 characters.
set textwidth=80

 " Highlight a column to indicate the maximum width of text.
set colorcolumn=81

" I hate wrapping.
set nowrap

" Use 4 spaces instead of tabs.
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab

" Be smart with indenting.
set smartindent

" Highlight matching brackets.
set showmatch

" Set custom invisible characters.
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:·

" Ignore cases when searching
set ignorecase

" If the search pattern contains uppercase characters, do match cases.
set smartcase

" Hide `.git` directory.
set wildignore=.git

" Use a dark scheme.
set background=dark

" Use true colors if supported.
if has("termguicolors")
    set termguicolors
endif

" Change the background of Vim to match the GTK theme.
highlight Normal guibg=001

" Make the line number background color the same as the regular background
" color.
highlight LineNr guibg=001
