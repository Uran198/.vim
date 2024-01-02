set nocompatible


filetype off			" required by Vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
" Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'
" Plugin 'davidhalter/jedi-vim'
" Plugin 'tpope/vim-surround'
" Plugin 'tpope/vim-repeat'
" Plugin 'rking/ag.vim'
" Plugin 'prabirshrestha/async.vim'
" Plugin 'prabirshrestha/vim-lsp'
Plugin 'will133/vim-dirdiff'
Plugin 'preservim/tagbar'
" Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'preservim/nerdtree'
Plugin 'vim-scripts/LanguageTool'
" Plugin 'sirver/UltiSnips'
Plugin 'nathangrigg/vim-beancount'

" Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'tpope/vim-rhubarb'

Plugin 'neovim/nvim-lspconfig'
Plugin 'ray-x/lsp_signature.nvim'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-unimpaired'

" Auto-completions.
Plugin 'hrsh7th/cmp-nvim-lsp'
Plugin 'hrsh7th/cmp-buffer'
Plugin 'hrsh7th/cmp-path'
Plugin 'hrsh7th/cmp-cmdline'
Plugin 'hrsh7th/nvim-cmp'

Plugin 'SirVer/ultisnips'
Plugin 'quangnguyen30192/cmp-nvim-ultisnips'

Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" Plugin 'mfussenegger/nvim-dap'
" Plugin 'mxsdev/nvim-dap-vscode-js'

Plugin 'puremourning/vimspector'

" All of your Plugins must be added before the following line
" After adding plugins run :PluginInstall
call vundle#end()            " required
filetype plugin indent on    " required

" To work in Nix.
let g:python3_host_prog = '/usr/bin/python3'
let g:vimspector_enable_mappings = 'HUMAN'


" required to use nice colorschemes
" set t_Co=256
" let g:zenburn_high_Contrast = 0
" let g:zenburn_transparent = 0
" colorscheme zenburn
colorscheme gruvbox
" hi! link LineNrBelow LineNr
hi! LineNrBelow guifg=#a89984 guibg=NONE guisp=NONE gui=NONE
hi! LineNrAbove guifg=#b0a390 guibg=NONE guisp=NONE gui=NONE
" set listchars hightlight color
" hi SpecialKey ctermfg=darkgray guifg=darkgray
" Cursor line should like other, and not __0_
" hi clear CursorLineNr
" Hide 0 on the current line
" hi CursorLineNr ctermfg=237
" nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
" nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
" nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?


" Use UI colors.
set termguicolors

" Makes things more black.
" hi Normal    ctermfg=188 ctermbg=none  guifg=#dcdccc

" Trying going back to defaults.
" use , for <Leader>
" let mapleader = ","
" use ; instead of :
" noremap ; :


" Plugin settings
" let g:syntastic_cpp_compiler_options = ' -std=c++0x'
let g:syntastic_cpp_checkers = ['clang_check']
" Make ctrlp ignore files from gitignore
" From https://github.com/kien/ctrlp.vim/issues/174
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

noremap <silent> <C-p> :Files<CR>

" Use AG for CtrlP
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  let g:ag_prg = 'ag --column --nogroup --noheading
    \ --ignore .git
    \ --ignore .svn
    \ --ignore .hg
    \ --ignore .DS_Store
    \ --ignore "**/*.pyc"
    \ --ignore .git5_specs
    \ --ignore node_modules
    \ --ignore vendor'

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
    \ --ignore .git
    \ --ignore .svn
    \ --ignore .hg
    \ --ignore .DS_Store
    \ --ignore "**/*.pyc"
    \ --ignore .git5_specs
    \ --ignore review
    \ --ignore node_modules
    \ --ignore vendor
    \ -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  " let g:ctrlp_use_caching = 0
endif

set cursorline " Highlight the current cursor line
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set expandtab                  " Always uses spaces instead of tabs
set tabstop=2                  " A tab is X spaces
set softtabstop=2              " Insert X spaces when tab is pressed
set shiftwidth=2               " An indent is X spaces
set smarttab                   " Indent instead of tab at start of line
set shiftround                 " Round spaces to nearest shiftwidth multiple
set nojoinspaces               " Don't convert spaces to tabs
set autoindent                 " automatic indentation

set history=10000              " keep X lines of command line history
set nobackup                   " do not keep a backup file
set ruler                      " show the cursor position all the time
set showcmd                    " display incomplete commands
set number                     " show line numbers
set relativenumber             " relative line numbers
set hidden                     " hides files instead of closing
set wildmenu                   " Encganced <Tab> in command mode
set wildmode=longest,list,full " Make <Tab> behave more bash-like
set ignorecase                 " ignore case while searching
set smartcase                  " ignore case if search pattern is all lowercase, case-sensitive otherwise
set autoread                   " automaticaly reread files change outside vim
set undofile                   " save undo tree when unloading buffers
set undodir=~/.vimundo         " here undo files will be placed
set undolevels=1000            " set maximum number of changes than can be undone
set autowrite                  " save file on external commands
" set keymap=ukrainian-jcuken    " set ukrainian keymap
set keymap=magyar_utf-8
set iminsert=0
set imsearch=-1
set formatoptions=croqlj
set foldcolumn=1 " 1 column for folds

set encoding=utf-8

" Match <>
set matchpairs+=<:>

" Hightlight tabs and trailing spaces
set list listchars=tab:>-,trail:Ħ

" set completition opetions in insert mode
set completeopt=longest,menuone

syntax on
set incsearch                   " do incremental searching
set hlsearch                    " highlight search results


" switch off highlighting with <Leader>/
noremap <silent><Leader><Leader> :nohls<CR>

" Use Y like D
noremap Y y$

" Don't use Ex mode, use Q for formatting
nnoremap Q gq
vnoremap Q gq
" autocmd FileType cpp,python,proto vmap <buffer><silent>Q :FormatLines<CR>
" autocmd FileType cpp,python,proto nmap <buffer><silent>Q :set opfunc=codefmt#FormatMap<CR>g@

" <F12> toggle paste
set pastetoggle=<F12>

" better navigating thought wraped lines
" nnoremap j gj
" nnoremap k gk

" Fix unintuitive Y
noremap Y y$

" Arrow keys are EVIL, remove them
" map <Right> <Nop>
" map <Left>  <Nop>
" map <Up>    <Nop>
" map <Down>  <Nop>


" status line: we want it at all times -- white on gray, with ASCII code of the current letter
set statusline=%<%f%h%m%r%=char=%b=0x%B\ \ %l,%c%V\ %P
set laststatus=2

" FIXME: Deprecated in nvim
" highlight MyStatusLineHighlight ctermbg=darkgray ctermfg=white
" set highlight+=s:MyStatusLineHighlight

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


" Repeat vim repeat
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

command Adate put ='=== '.strftime('%d-%m-%Y').' ==='

set modeline

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

let python_highlight_all=1

"    " COC setup
"    nmap <silent> gd <Plug>(coc-definition)
"    nmap <silent> gy <Plug>(coc-type-definition)
"    nmap <silent> gi <Plug>(coc-implementation)
"    nmap <silent> gr <Plug>(coc-references)
"    
"    vmap <leader>f  <Plug>(coc-format-selected)
"    
"    nmap <leader>r  <Plug>(coc-rename)
"    
"    nmap <silent> ge <Plug>(coc-diagnostic-next)
"    nmap <silent> gp <Plug>(coc-diagnostic-prev)
"    " Jump between diagnostics
"    " nmap <silent> <Leader>dn <Plug>(coc-diagnostic-next)
"    " nmap <silent> <Leader>dp <Plug>(coc-diagnostic-prev)
"    
"    
"    autocmd FileType typescript,json,php setl formatexpr=CocAction('formatSelected')
"    command! -nargs=0 Format :call CocActionAsync('format')
"    
"    " Use K to show documentation in preview window.
"    nnoremap <silent> K :call ShowDocumentation()<CR>
"    function! ShowDocumentation()
"      if CocAction('hasProvider', 'hover')
"        call CocActionAsync('doHover')
"      else
"        call feedkeys('K', 'in')
"      endif
"    endfunction
"    
"    " Automatically close outline.
"    autocmd BufEnter * call CheckOutline()
"    function! CheckOutline() abort
"      if &filetype ==# 'coctree' && winnr('$') == 1
"        if tabpagenr('$') != 1
"          close
"        else
"          bdelete
"        endif
"      endif
"    endfunction
"    
"    nnoremap <silent><nowait> <leader>o  :call ToggleOutline()<CR>
"    function! ToggleOutline() abort
"      let winid = coc#window#find('cocViewId', 'OUTLINE')
"      if winid == -1
"        call CocActionAsync('showOutline', 1)
"      else
"        call coc#window#close(winid)
"      endif
"    endfunction

" Use small terminal by default.
" FIXME: nvim doesn't support this
" set termwinsize=10x0
" Don't change window size on split/close of windows.
set noequalalways

" LanguageTool configuration
let g:languagetool_jar='$HOME/Downloads/LanguageTool-2.9/languagetool-commandline.jar'
" let g:languagetool_lang='uk'
let g:languagetool_lang='en'


" TODO: Can I use LanguageTool somehow?
" Translate stuff from hungarian
function! s:Translate(command)
    let word = expand('<cword>')
    " If not in the scratch window, try finding it or create one
    if &buftype != 'nofile'
        for win in range(1, winnr())
            exe "norm! " . win . " \<C-W>w"
            if &buftype == 'nofile'
                break
            endif
        endfor
        if &buftype != 'nofile'
            new
        endif
    endif
    " Make sure all the options are correct
    setlocal nonumber buftype=nofile bufhidden=hide noswapfile
    setlocal filetype=markdown
    " Clear scratch file
    exe "norm! ggdG"
    silent exe "r!" . a:command . " " . word
    0d
endfunction

" command! -nargs=0 CTranslate call s:Translate('/home/attila/get_hun.py')
" " TODO Do only on certain filetypes or better yet make a vim script to
" source when want it to work. Or make it switch on/off able.
" noremap K :CTranslate<CR>

packadd! matchit

" Swap files location.
set dir=~/tmp,/var/tmp,/tmp

let g:coc_global_extensions = ['coc-json', 'coc-phpls', 'coc-html',
            \'coc-vetur', 'coc-webview', 'coc-jedi']
" For beancount to allow autocompletion of whole account names.
autocmd FileType beancount let b:coc_additional_keywords = [":", "-", "#"]
autocmd FileType beancount setl softtabstop=2 shiftwidth=2 tabstop=2
autocmd FileType beancount setl softtabstop=2 shiftwidth=2 tabstop=2
autocmd FileType beancount inoremap <C-L> <C-O>/Expenses:TODO<C-M><C-O>cE
autocmd FileType beancount nnoremap <Leader>L /Expenses:TODO<C-M>cE
" autocmd FileType beancount let b:coc_disabled_sources = ['buffer', 'file']
" Disable completion for 'end' in Lua files
" autocmd FileType lua let b:coc_suggest_blacklist = ["end"]

" Correct comments for coc-settings.json
autocmd FileType json syntax match Comment +\/\/.\+$+

" Add missing imports on save.
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

" For JS - fixes enum using 4 spaces indentation everywhere apart form the first line.
let g:typescript_indent_disable = 1

" Mappings
noremap \gh :GBrowse<CR>

norema \gb :Git blame<CR>

" TODO: Configure cwindow population with fzf and multi file selection on
" :Files.

