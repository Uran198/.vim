" Tab specific option
set tabstop=8                   "A tab is 8 spaces
set expandtab                   "Always uses spaces instead of tabs
set softtabstop=4               "Insert 4 spaces when tab is pressed
set shiftwidth=4                "An indent is 4 spaces
set smarttab                    "Indent instead of tab at start of line
set shiftround                  "Round spaces to nearest shiftwidth multiple
set nojoinspaces                "Don't convert spaces to tabs

" Adding cabal to a path variable
let $PATH = $PATH . ':' . expand("~/.cabal/bin")
map <F5> :w <CR> :!runhaskell % <CR>
map <F6> :w <CR> :!ghci % <CR>
