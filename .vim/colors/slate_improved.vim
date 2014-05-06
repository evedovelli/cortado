set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "slate_improved"

hi Comment guifg=gray67
hi Constant guifg=lightred
hi Cursor guifg=slategrey guibg=khaki
hi CursorColumn guibg=gray40
hi CursorIM gui=None
hi CursorLine guibg=gray40
hi Define gui=bold guifg=gold
hi DiffAdd guibg=darkblue
hi DiffChange guibg=darkmagenta
hi DiffDelete gui=bold guifg=blue guibg=darkcyan
hi DiffText gui=bold guibg=red
hi Directory guifg=cyan
hi Error guifg=white guibg=red
hi ErrorMsg guifg=white guibg=red
hi FoldColumn guifg=gray20 guibg=black
hi Folded guifg=gray40 guibg=black
hi Function guifg=navajowhite
hi Identifier guifg=salmon
hi Ignore guifg=gray40
hi IncSearch gui=reverse guifg=green guibg=black
hi Include guifg=red
hi LineNr guifg=gray50
hi MatchParen guibg=darkcyan
hi ModeMsg gui=bold guifg=goldenrod
hi MoreMsg gui=bold guifg=seagreen
hi NonText gui=bold guifg=royalblue guibg=gray15
hi Normal guifg=white guibg=gray15
hi Operator guifg=red
hi Pmenu guibg=magenta
hi PmenuSbar guibg=grey
hi PmenuSel guibg=darkgray
hi PmenuThumb gui=reverse
hi PreProc guifg=#ff8738 guibg=gray15
hi Question gui=bold guifg=springgreen
hi Search guifg=wheat guibg=peru
hi SignColumn guifg=cyan guibg=grey
hi Special guifg=darkkhaki
hi SpecialKey guifg=gray30
hi SpellBad gui=undercurl
hi SpellCap gui=undercurl
hi SpellLocal gui=undercurl
hi SpellRare gui=undercurl
hi Statement gui=bold guifg=cornflowerblue
hi StatusLine guifg=black guibg=#c2bfa5
hi StatusLineNC guifg=gray40 guibg=#c2bfa5
hi String guifg=skyblue
hi Structure guifg=green
hi TabLine gui=underline guibg=darkgray
hi TabLineFill gui=reverse
hi TabLineSel gui=bold
hi Title gui=bold guifg=gold
hi Todo guifg=orangered guibg=yellow2
hi Type gui=bold guifg=cornflowerblue
hi Underlined gui=underline guifg=#80a0ff
hi VertSplit guifg=gray40 guibg=#c2bfa5
hi Visual guifg=#a70500 guibg=#ffc8a3
hi VisualNOS gui=bold,underline
hi WarningMsg guifg=salmon
hi WildMenu guifg=black guibg=yellow
hi link Boolean Constant
hi link Character Constant
hi link Conditional Statement
hi link Debug Special
hi link Delimiter Special
hi link Exception Statement
hi link Float Constant
hi link Keyword Statement
hi link Label Statement
hi link Macro PreProc
hi link Number Constant
hi link PreCondit PreProc
hi link Repeat Statement
hi link SpecialChar Special
hi link SpecialComment Special
hi link StorageClass Type
hi link Tag Special
hi link Typedef Type

