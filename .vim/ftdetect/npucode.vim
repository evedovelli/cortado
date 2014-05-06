autocmd BufReadPost,FileReadPre *.asm call s:Check_np_syntax()
autocmd BufReadPost,FileReadPre *.h   call s:Check_np_syntax()


func! s:Check_np_syntax()
  " Check if file is inside mcode dir
  " LINUX
  if expand('%:p') =~? "/g1/"
    set filetype=npucode
  elseif expand('%:p') =~? "/g2/"
    set filetype=npucode_g2
  elseif expand('%:p') =~? "/mcode/"
    set filetype=npucode
  endif
  " WINDOWS
  if expand('%:p') =~? "\\g1\\"
    set filetype=npucode
  elseif expand('%:p') =~? "\\g2\\"
    set filetype=npucode_g2
  elseif expand('%:p') =~? "\\mcode\\"
    set filetype=npucode
  endif
endfunc

