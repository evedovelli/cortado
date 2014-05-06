autocmd BufReadPost,FileReadPre *.log call s:Check_np_autotests_syntax()

func! s:Check_np_autotests_syntax()
  " Check if file is inside obj log dir
  if expand('%:p') =~? "obj"
    set filetype=logtxt
  endif
endfunc

