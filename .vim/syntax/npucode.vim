" Vim syntax file
" Language:	NP3 Micro Code Assembler
" Maintainer:	Rodrigo Mancuso <rodrigo.mancuso@datacom.ind.br>
" Last Change:	2009 Apr 16

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
"

" init
syn clear
syn sync minlines=500

hi link Register    Identifier
hi link Device      Identifier
hi link Conflict    Todo
hi link Instruction Statement
hi link Label       SpecialKey
hi link Parameter   Special

" Executes syntax.vim file if present. This file contains the ucode labels and
" macros for syntax highlight
if filereadable("syntax.vim")
  source syntax.vim
endif

" Match the Labels when in the begining of the line
syntax match Label /^\s*[a-zA-Z][_a-zA-Z0-9]*:/
syntax match Label /^\s*PUBLIC\s\+[a-zA-Z][_a-zA-Z0-9]*:/

" Match Macros
syntax match Macro /^\s*MACRO \+[a-zA-Z][_a-zA-Z0-9]*;\?/
syntax match Macro /^\s*ENDMACRO;/

" Match Parameters
syntax match Parameter /\<\(P_[a-zA-Z][_a-zA-Z0-9]*\)\>/

" Match identations other than 4 spaces...
"syntax match SpellBad /^ \{1,3\}\(    \)*[^ ]/

" Match tabs
syntax match SpellBad /\t\+$/

" Match spaces and tabs in the end of a line
syntax match SpellBad /[\t ]\+$/

" Match strings like [REG] that the convension states that it should be like [ REG ]
syntax match SpellBad /\(\[ \?\w\+\]\)\|\(\[\w\+ \?\]\)/
syntax match SpellBad / \+[,;]/
"syntax match SpellBad /^.\{100\}/
syntax keyword SpellBad jstack jcam jmul movbits mov4bits getrnd4bits getrndbits getfixbits getres puthdr putkey lookcam protdecode
syntax keyword SpellBad Jstack Jcam Jmul Movbits Mov4bits Getrnd4bits Getrndbits Getfixbits Getres Puthdr Putkey Lookcam Protdecode
syntax keyword SpellBad JSTACK JCAM JMUL MOVBITS MOV4BITS GETRND4BITS GETRNDBITS GETFIXBITS GETRES PUTHDR PUTKEY LOOKCAM PROTDECODE
syntax keyword SpellBad mov decode xor sub and add jmp copy write halt nop Byte byte Bit bit Bits bits get put if
syntax keyword SpellBad loop learn writecond shl shr order return call
syntax keyword SpellBad MOV DECODE XOR SUB AND ADD JMP COPY WRITE HALT NOP GET PUT IF LOOP LEARN WRITECOND SHL SHR ORDER
syntax keyword SpellBad RETURN CALL
syntax keyword SpellBad _nop0 _nop1 _nop2 
syntax keyword SpellBad _Nop0 _Nop1 _Nop2 
syntax keyword SpellBad ldreg Ldreg LdReg LDReg LdREG
syntax keyword SpellBad ldcam Ldcam LdCam LDCam LdCAM
syntax keyword SpellBad ldtcam Ldtcam LdTCam LDTCam LdTCAM


" Match comments
syntax match   Comment /\/\/.*$/ contains=Todo
syntax region  Comment start="/\*" end="\*/" contains=Todo
syntax keyword Todo TODO FIXME SUGGESTION

" Conflicts
syntax match Conflict /[>=<]\{7\}/

" keywords defines
" #define #elif #else #elsifdef #endif #error #if #ifdef #ifndef #include #undef
syntax match Define /#elsifdef\|#include\|#define\|#ifndef\|#endif\|#error\|#ifdef\|#undef\|#elif\|#else\|#if/

" Match strings that start with # (basicalli ifdefs) that must not
" have any space in the begining
syntax match SpellBad /^ \+\(#elsifdef\|#include\|#ifndef\|#ifdef\|#undef\|#endif\|#elif\|#else\|#if\)/


" keywords instructions
syntax keyword Instruction Mov Decode Encode JStack JCam JMul MovBits Mov4Bits GetRnd4Bits GetRndBits GetFixBits GetRes Xor Sub And Add Jmp Copy Write PutHdr Halt PutKey Nop _NOP0 _NOP1 _NOP2 BYTE BIT BITS Get Put  LookCam If LDREG LDCAM LDTCAM
syntax keyword Instruction Lookup JMatch JNoMatch UseCond JMaskNoMatch JMaskMatch Loop Learn WriteCond Shl Shr Call Return ProtDecode

" keywords Devices on TOPparse
syntax keyword Device UREG FBLK SREG HREG HWARE OREG ALU CNT

" keywords Registers names on TOPparse
syntax keyword Register RD_PTR UDB CAMO CAMI HD_REG0 HD_REG1 HD_REG2 HD_REG3 HD_REG4 HD_REG13 HD_REG15 OBS0 OBS1 OBS2 OBS3 KBS0 KBS1 KBS2 KBS3 SEND_REG0 SEND_REG1 SEND_REG2 QUEUE_NUM DISP_REG FR_STRT FR_PTR_IND0 FR_PTR_IND1 FR_PTR_IND2 FR_PTR0 FR_PTR1 FR_PTR2 SOURCE_PORT_REG HW_STATUS STATUS
syntax match   Register /RESULT[0-7]/

" keywords Registers names on TOPsearch
syntax keyword Register KREG TREG OREG TOREG Order

" keywords Registers names on TOPresolve
syntax keyword Register STRNUM ENC_PRI ST_GRP0 ST_GRP1 PC_STACK CTRL_REG FR_PTR


" Numbers
syntax match Number "\<\d\+\>"
syntax match Number "\<0x\x\+\>"

let b:current_syntax = 'npucode'

