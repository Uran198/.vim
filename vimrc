set nocompatible

" set my favorite colorscheme
colors koehler

" plugin to easilly install plugins
execute pathogen#infect()
execute pathogen#helptags()

let g:jedi#force_py_version = 3

set backspace=indent,eol,start " allow backspacing over everything in insert mode
set tabstop=8                  " A tab is 8 spaces
" set expandtab                  " Always uses spaces instead of tabs
set softtabstop=8              " Insert 8 spaces when tab is pressed
set shiftwidth=0               " An indent is 8 spaces
" set smarttab                   " Indent instead of tab at start of line
set shiftround                 " Round spaces to nearest shiftwidth multiple
set nojoinspaces               " Don't convert spaces to tabs
set autoindent                 " automatic indentation
set history=50                 " keep 50 lines of command line history
set nobackup                   " do not keep a backup file
set ruler                      " show the cursor position all the time
set showcmd                    " display incomplete commands
set number                     " show line numbers
set relativenumber             " relative line numbers
set hidden                     " hides files instead of closing
set wildmenu                   " Encganced <Tab> in command mode
set ignorecase                 " ignore case while searching
set smartcase                  " ignore case if search pattern is all lowercase, case-sensitive otherwise
set autoread                   " automaticaly reread files change outside vim
set undofile                   " save undo tree when unloading buffers
set undodir=~/.vimundo         " here undo files will be placed
set undolevels=1000            " set maximum number of changes than can be undone
set autowrite                  " save file on external commands

set encoding=utf-8

" Hightlight trailing spaces and tabs
set list listchars=tab:>-,trail:Ħ

" set completition opetions in insert mode
set completeopt=menu,menuone " ,longest,preview

set encoding=utf-8
" Hightlight trailing spaces and leave tabs untouched
set list listchars=tab:\ \ ,trail:Ħ
set autowrite                  " save file on external commands

" set completition opetions in insert mode
set completeopt=menu,menuone " ,longest,preview

syntax on
set incsearch " do incremental searching
set hlsearch  " highlight search results

" set tabs hightlight color
hi SpecialKey ctermfg=darkgray guifg=darkgray

" use , for <Leader>
let mapleader = ","

" switch off highlighting with <Leader>/
noremap <silent><Leader>/ :nohls<CR>

" use ; instead of :
noremap ; :

" Don't use Ex mode, use Q for formatting
map Q gq

" <F12> toggle paste
set pastetoggle=<F12>

map <leader>c :w<CR> :make<CR><CR><CR>
map <leader>r :w<CR> :make run<CR><CR><CR>

" better navigating thought wraped lines
nnoremap j gj
nnoremap k gk

" Arrow keys are EVIL
map <Right> <Nop>
map <Left>  <Nop>
map <Up>    <Nop>
map <Down>  <Nop>


" status line: we want it at all times -- white on gray, with ASCII code of the current letter
set statusline=%<%f%h%m%r%=char=%b=0x%B\ \ %l,%c%V\ %P
set laststatus=2
set highlight+=s:MyStatusLineHighlight
highlight MyStatusLineHighlight ctermbg=darkgray ctermfg=white

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" disable mouse
set mouse=

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on
filetype plugin on " enable plugins

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
au!

" For all text files set 'textwidth' to 78 characters.
autocmd FileType text setlocal textwidth=78

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
autocmd BufReadPost *
\ if line("'\"") > 1 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif

augroup END

let g:syntastic_cpp_compiler_options = ' -std=c++0x'
