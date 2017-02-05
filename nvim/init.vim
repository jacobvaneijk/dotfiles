call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/gitignore'
Plug 'editorconfig/editorconfig-vim'
Plug 'chriskempson/base16-vim'
Plug 'tpope/vim-fugitive'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'

call plug#end()

" Load all plugin specific configurations.
for file in split(glob('~/.config/nvim/config/*.vim'), '\n')
    exec 'source' file
endfor

" Load all general configurations.
for file in split(glob('~/.config/nvim/config/*.vim'), '\n')
    exec 'source' file
endfor
