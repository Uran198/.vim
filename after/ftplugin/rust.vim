
" Run and compile shortcuts.
nmap <buffer> <leader>c :!rustc % -o main<CR>
nmap <buffer> <leader>r :!rustc % -o main && ./main<CR>

" Reformat on save.
autocmd! BufWritePost *.rs silent! !rustfmt <afile>
