setlocal tabstop=4                  " A tab is 4 spaces
setlocal softtabstop=4              " Insert 4 spaces when tab is pressed
setlocal shiftwidth=4               " An indent is 4 spaces
setlocal cindent                    " Enable c indent style
setlocal cinoptions=g-1             " better but not perfect indentation(ex. access specifiers)

" fast running
nmap <buffer> <leader>r :write <CR> :!make run <CR>

"fast compiling & fixing
nmap <buffer> <leader>c :write <CR> :make <CR>

