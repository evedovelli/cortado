set makeprg=make\ -j3\ build
"set makeprg=make\ build
set errorformat=%f:%l:\%m

"map \cn :cn
"map \cp :cp
map \cf :cnf
map \cw :cw
map \m  :mak

map \cww \v:cw<cr>\l\j\k:q<cr>\j\l

map \n  :!make -j3 build >& >/tmp/rpo/build.log&<cr><cr>
