
" Run and compile shortcuts.
nmap <buffer> <leader>c :!rustc % -o main<CR>
nmap <buffer> <leader>r :!rustc % -o main && ./main<CR>

" Reformat on save.
" TODO: Can I make it move to the error?
autocmd! BufWritePost *.rs silent! execute "!timeout 5 rustfmt <afile> 2>&1 >/dev/null" | redraw!
