" Use powerline fonts.
let g:airline_powerline_fonts=1

" Disable the pointy separators.
let g:airline_right_sep=""
let g:airline_left_sep=""

" Customize the right section of the statusline.
let g:airline_section_z=airline#section#create('%l/%L:%v')

" Enable some cool airline extensions.
let g:airline_extensions=['branch']
