call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/gitignore'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'jparise/vim-graphql'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'rhysd/vim-clang-format'
Plug 'jvirtanen/vim-hcl'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

call plug#end()

" Load all plugin specific configurations.
for file in split(glob('~/.config/nvim/config/*.vim'), '\n')
    exec 'source' file
endfor

" Load all general configurations.
for file in split(glob('~/.config/nvim/config/*.vim'), '\n')
    exec 'source' file
endfor
