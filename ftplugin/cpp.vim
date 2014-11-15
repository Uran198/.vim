set completeopt=menuone " ,menu,longest,preview

set tabstop=4                  " A tab is 4 spaces
set softtabstop=4              " Insert 4 spaces when tab is pressed
set shiftwidth=4               " An indent is 4 spaces

" fast running
nmap <leader>r :write <CR> :!make run <CR>

" smart curly brackets inserting
inoremap {<CR> {<ESC>mtA<CR>}<C-O>`t<Right><CR><End>

