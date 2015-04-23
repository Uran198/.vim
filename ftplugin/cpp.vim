setlocal tabstop=4                  " A tab is 4 spaces
setlocal softtabstop=4              " Insert 4 spaces when tab is pressed
setlocal shiftwidth=4               " An indent is 4 spaces
setlocal cindent                    " Enable c indent style
setlocal cinoptions=g-1             " better but not perfect indentation(ex. access specifiers)

"fast compiling & fixing
nmap <buffer> <leader>c :write <CR> :make <CR>

" compile and run
function! Run(...)
  let l:input = 'in'
  let l:output = 'out'
  if a:0 >= 1 " treat first argument as name of input file
    let l:input = a:1
  endif
  if a:0 >= 2 " treat second - as name of output file
    let l:output = a:2
  endif
  let makefiles = ['Makefile']

  " Must be a better way to do it
  let can_make = 0
  for mfile in makefiles
    let can_make = filereadable(mfile)
    if can_make
      break
    endif
  endfor

  write "save changes
  if can_make
" Asuming that make run the program as well
    !make
  else
    let l:bin = expand('%:t:r')
    if filereadable(input)
       let l:bin = l:bin . ' < ' . input
    endif
    if filereadable(output)
       let l:bin = l:bin . ' > ' . output
    endif
    silent !g++ % -o %:t:r
    execute '!./' . l:bin
    redraw!
  endif
endfunction

map <leader>r :call Run('in','out')<CR>
