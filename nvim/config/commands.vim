" Automatically remove whitespaces on save.
autocmd BufWritePre * :%s/\s\+$//e

" Wrap lines in Markdown files.
autocmd BufRead,BufNewFile *.md set ft=markdown fo+=t
