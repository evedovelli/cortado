" Vim syntax file
" Language: NP3 Micro Code Manual
" Maintainer:	Estevan Vedovelli <estevan.vedovelli@datacom.ind.br>
" Last Change:	2009 September 24

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


hi link Register    Identifier
hi link Device      Identifier
hi link Conflict    Todo
hi link Instruction Identifier
hi link Tags        Statement
hi link Label       SpecialKey

"hi Register  	guifg=darkblue
"hi Register     ctermfg=darkblue
"hi Device       guifg=blue
"hi Device       ctermfg=blue

" Match the Labels when in the begining of the line
syntax match Label /^\s*[a-zA-Z][_a-zA-Z0-9]*:/

" Match Macros

" Match identations other than 4 spaces...
"syntax match SpellBad /^ \{1,3\}\(    \)*[^ ]/
" Match spaces and tabs in the end of a line
syntax match SpellBad /[\t ]\+$/

syntax match Tags /TOP[a-z12]*/

" Match comments
syntax match   Comment /\/\/.*$/ contains=Todo
syntax region  Comment start="/\*" end="\*/" contains=Todo
syntax keyword Todo TODO FIXME SUGGESTION

" Conflicts
syntax match Conflict /[>=<]\{7\}/

" keywords defines
syntax match Define /#define\|#ifdef\|#else\|#endif\|#ifndef\|#undef/
syntax match Include /#include/

" keywords instructions
syntax keyword Instruction Mov JStack JCam JMul MovBits GetRnd4Bits GetRndBits GetRes Xor Sub And Add Jmp Copy Write PutHdr Halt PutKey Nop _NOP0 _NOP1 _NOP2 BYTE BIT Get Put  LookCam If LDREG LDCAM LDTCAM Lookup JMatch JNoMatch UseCond JMaskNoMatch JMaskMatch

" keywords instruction-like macros
syntax keyword Instruction JE JNE JC JNC

" keywords Devices on TOPparse
syntax keyword Device UREG FBLK SREG HREG HWARE OREG ALU

" keywords Registers names on TOPparse
syntax keyword Register RD_PTR UDB CAMO CAMI HD_REG0 HD_REG1 HD_REG2 HD_REG13 HD_REG14 HD_REG15 OBS0 OBS1 OBS2 OBS3 KBS0 KBS1 KBS2 KBS3 SEND_REG0 SEND_REG1 SEND_REG2 QUEUE_NUM DISP_REG FR_STRT FR_PTR_IND0 FR_PTR_IND1 FR_PTR_IND2 FR_PTR0 FR_PTR1 FR_PTR2 SOURCE_PORT_REG HW_STATUS
syntax match   Register /RESULT[0-7]/

" keywords Registers names on TOPsearch
syntax keyword Register KREG TREG OREG TOREG

" keywords Registers names on TOPresolve
syntax keyword Register ENC_PRI ST_GRP0 ST_GRP1 PC_STACK CTRL_REG FR_PTR


" Numbers 
syntax match Number "\d\+"
syntax match Number "0x\x\+"
syntax match Number "---\+"


let b:current_syntax = "np3man"

