" Vim syntax file
" Language:	*.crn schedule files
" Maintainer:	Rodrigo Mancuso <rodrigo.mancuso@datacom.ind.br>
" Last Change:	2009 Ago 31

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


" Making uncomplete tasks red
syntax match   PreProc    /^\s*Complete:.*/

"Making Resources and Tasks highlighted
syntax match   StatusLine /^\s*Resource:.*/
syntax match   Statement  /^\s*Task:.*/

" Making duration, comment and Start green
syntax keyword Identifier Duration Comment Start Holiday Date Milestone

" Making complete tasks green
syntax match   Identifier /^\s*Complete:\s*100\s*$/

" Comments
syntax match   Comment /%.*$/ contains=Todo
syntax keyword Todo TODO FIXME SUGGESTION

let b:current_syntax = 'crnschedule'

