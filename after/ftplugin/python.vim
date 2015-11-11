setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal nojoinspaces
setlocal textwidth=79
setlocal autoindent

" using pyenv for python versioning

" by default it uses <leader>r
let g:jedi#rename_command = '<leader>e'

" fast running
nmap <buffer> <leader>r :!python %<CR>

" fast running(interactive)
nmap <buffer> <leader>i :!ipython -i %<CR>
