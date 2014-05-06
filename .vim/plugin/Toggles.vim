
function Toggle_number()
  if &number == 0
    set number
  else
    set nonumber
  endif
  echo &number == 0 ?  "Line Numbering now OFF" : "Line Numbering now ON" 
  return -1
endfunction

function Toggle_wrap()
  if &wrap == 0
    set wrap
  else
    set nowrap
  endif
  echo &wrap == 0 ?  "Line Wrapping now OFF" : "Line Wrapping now ON" 
  return -1
endfunction

function Add_unique_debug()
  if !exists('g:debug_count')
    let g:debug_count = 23456
  endif

  let g:debug_count = g:debug_count + 1

  let @w = "0Ikidebug(1,\"FLOW AT [".g:debug_count."]\");=="
endfunction

function Dcount (count)
  if !exists('g:debug_count')
    let g:debug_count = a:count 
  endif

  let g:debug_count = a:count

  let @w = "0Ikidebug(1,\"FLOW AT [".g:debug_count."]\");=="
endfunction
