setlocal tabstop=4                  " A tab is 4 spaces
setlocal softtabstop=4              " Insert 4 spaces when tab is pressed
setlocal shiftwidth=4               " An indent is 4 spaces
setlocal cindent                    " Enable c indent style
setlocal cinoptions=g-1

" fast running
" Maybe better to use just make and set makeprg?
nmap <buffer> <leader>r :write <CR> :!make run <CR>

" smart curly brackets inserting
inoremap <buffer> {<CR> {<ESC>mtA<CR>}<C-O>`t<Right><CR><End>

