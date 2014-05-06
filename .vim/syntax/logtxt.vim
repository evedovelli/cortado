" Vim syntax file
" Language: NP microcode test logs
" Maintainer: Estevan Vedovelli <estevan.vedovelli@datacom.ind.br>
" Last Change: 2010 Mar 18

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
"

" init
syn clear
syn sync minlines=500
"syn case ignore

"if version < 600
"  syntax clear
"elseif exists("b:current_syntax")
"  set cursorcolumn
"  finish
"endif

hi lightMagenta   guifg=lightmagenta
hi lightMagenta   ctermfg=lightmagenta
hi lightBlue      guifg=lightblue
hi lightBlue      ctermfg=lightblue


hi Server        guifg=lightgreen
hi Server        ctermfg=lightgreen
hi TestBoard      guifg=lightcyan
hi TestBoard      ctermfg=lightcyan
hi MPU            guifg=lightred
hi MPU            ctermfg=lightred
hi StimulusBoard  guifg=lightyellow
hi StimulusBoard  ctermfg=lightyellow

hi link Error          ErrorMsg
  hi link ServerErrorMsg Include
  hi link TBErrorMsg     Include
  hi link SBErrorMsg     Include
  hi link MPUErrorMsg    Include
hi link Info           DiffAdd
  hi link ServerInfoMsg  lightBlue
  hi link TBInfoMsg      lightBlue
  hi link SBInfoMsg      lightBlue
  hi link MPUInfoMsg     lightBlue
hi link Text           Comment
  hi link ServerTextMsg  Comment
  hi link TBTextMsg      Comment
  hi link SBTextMsg      Comment
  hi link MPUTextMsg     Comment
hi link Warn           Search
  hi link ServerWarnMsg  ModeMsg
  hi link TBWarnMsg      ModeMsg
  hi link SBWarnMsg      ModeMsg
  hi link MPUWarnMsg     ModeMsg
hi link Abort          DiffChange
  hi link ServerAbortMsg lightMagenta
  hi link TBAbortMsg     lightMagenta
  hi link SBAbortMsg     lightMagenta
  hi link MPUAbortMsg    lightMagenta


" General Matches
syntax match Server        '\[[0-9\:]*\s*Server\]'
syntax match TestBoard     '\[[0-9\:]*\s*Test Board\]'
syntax match StimulusBoard '\[[0-9\:]*\s*Stimulus Board\]'
syntax match Mpu           '\[[0-9\:]*\s*MPU\]'

syntax match Error     '\[Error\]'
syntax match Info      '\[Info\]'
syntax match Warn      '\[Warning\]'
syntax match Abort     '\[Abort\]'


" Text matches
syntax match ServerTextMsg   '^\s*\(\[[0-9\:]*\s*Server\]\).*$'                           contains=Server
syntax match TBTextMsg       '^\s*\(\[[0-9\:]*\s*Test Board\]\).*$'                       contains=TestBoard
syntax match SBTextMsg       '^\s*\(\[[0-9\:]*\s*Stimulus Board\]\).*$'                   contains=StimulusBoard
syntax match MPUTextMsg      '^\s*\(\[[0-9\:]*\s*MPU\]\).*$'                              contains=MPU

" Info matches
syntax match ServerInfoMsg   '^\s*\(\[[0-9\:]*\s*Server\]\)\s*\(\[Info\]\).*$'            contains=Server,Info
syntax match TBInfoMsg       '^\s*\(\[[0-9\:]*\s*Test Board\]\)\s*\(\[Info\]\).*$'        contains=TestBoard,Info
syntax match SBInfoMsg       '^\s*\(\[[0-9\:]*\s*Stimulus Board\]\)\s*\(\[Info\]\).*$'    contains=StimulusBoard,Info
syntax match MPUInfoMsg      '^\s*\(\[[0-9\:]*\s*MPU\]\)\s*\(\[Info\]\).*$'               contains=Mpu,Info

" Warning matches
syntax match ServerWarnMsg   '^\s*\(\[[0-9\:]*\s*Server\]\)\s*\(\[Warning\]\).*$'         contains=Server,Warn
syntax match TBWarnMsg       '^\s*\(\[[0-9\:]*\s*Test Board\]\)\s*\(\[Warning\]\).*$'     contains=TestBoard,Warn
syntax match SBWarnMsg       '^\s*\(\[[0-9\:]*\s*Stimulus Board\]\)\s*\(\[Warning\]\).*$' contains=StimulusBoard,Warn
syntax match MPUWarnMsg      '^\s*\(\[[0-9\:]*\s*MPU\]\)\s*\(\[Warning\]\).*$'            contains=Mpu,Warn

" Error matches
syntax match ServerErrorMsg  '^\s*\(\[[0-9\:]*\s*Server\]\)\s*\(\[Error\]\).*$'           contains=Server,Error
syntax match TBErrorMsg      '^\s*\(\[[0-9\:]*\s*Test Board\]\)\s*\(\[Error\]\).*$'       contains=TestBoard,Error
syntax match SBErrorMsg      '^\s*\(\[[0-9\:]*\s*Stimulus Board\]\)\s*\(\[Error\]\).*$'   contains=StimulusBoard,Error
syntax match MPUErrorMsg     '^\s*\(\[[0-9\:]*\s*MPU\]\)\s*\(\[Error\]\).*$'              contains=Mpu,Error

" Abort matches
syntax match ServerAbortMsg  '^\s*\(\[[0-9\:]*\s*Server\]\)\s*\(\[Abort\]\).*$'           contains=Server,Abort
syntax match TBAbortMsg      '^\s*\(\[[0-9\:]*\s*Test Board\]\)\s*\(\[Abort\]\).*$'       contains=TestBoard,Abort
syntax match SBAbortMsg      '^\s*\(\[[0-9\:]*\s*Stimulus Board\]\)\s*\(\[Abort\]\).*$'   contains=StimulusBoard,Abort
syntax match MPUAbortMsg     '^\s*\(\[[0-9\:]*\s*MPU\]\)\s*\(\[Abort\]\).*$'              contains=Mpu,Abort


let b:current_syntax = 'logtxt'

