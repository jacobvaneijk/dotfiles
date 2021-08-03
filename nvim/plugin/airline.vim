" Use powerline fonts.
let g:airline_powerline_fonts=1

" Customize the right section of the statusline.
let g:airline_section_z=airline#section#create('%l/%L:%v')

" Enable some cool airline extensions.
let g:airline_extensions=['branch']
