" enable omni comletition
set omnifunc=syntaxcomplete#Complete

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

set tabstop=4                  " A tab is 4 spaces
set softtabstop=4              " Insert 4 spaces when tab is pressed
set shiftwidth=4               " An indent is 4 spaces

" -- ctags --
" map <ctrl>+F12 to generate ctags for current folder:
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+pl --fields=+iaS --extra=+q .<CR><CR>

" add standart library tags
set tags+=~/.vim/tags/cpp

" add current directory's generated tags file to available tags
set tags+=./tags

" temporary for fast testing
map <F5> :write <CR> :!make run <CR>

inoremap {<CR> {<CR><C-O>"tdd<C-O>O}<ESC>"tPA


