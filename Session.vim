let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
exe "cd " . escape(expand("<sfile>:p:h"), ' ')
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 index.html
badd +1 style.css
badd +1 reset.css
badd +7 css/reset.css
badd +1 css/style.css
badd +1 css/font_face.css
badd +1 css/media.css
badd +12 css/miscellaneous.css
badd +7 css\ responsive.css
badd +1 css/responsive.css
badd +0 css/font_face_ageo.css
argglobal
silent! argdel *
$argadd ~/lawapi/landing/index.html
$argadd ~/lawapi/landing/style.css
edit index.html
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
3wincmd k
wincmd w
wincmd w
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe '1resize ' . ((&lines * 80 + 47) / 94)
exe 'vert 1resize ' . ((&columns * 84 + 107) / 214)
exe '2resize ' . ((&lines * 9 + 47) / 94)
exe 'vert 2resize ' . ((&columns * 84 + 107) / 214)
exe '3resize ' . ((&lines * 1 + 47) / 94)
exe 'vert 3resize ' . ((&columns * 129 + 107) / 214)
exe '4resize ' . ((&lines * 9 + 47) / 94)
exe 'vert 4resize ' . ((&columns * 129 + 107) / 214)
exe '5resize ' . ((&lines * 66 + 47) / 94)
exe 'vert 5resize ' . ((&columns * 129 + 107) / 214)
exe '6resize ' . ((&lines * 11 + 47) / 94)
exe 'vert 6resize ' . ((&columns * 129 + 107) / 214)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=7
setlocal fml=1
setlocal fdn=20
setlocal fen
4
normal! zo
19
normal! zo
46
normal! zo
52
normal! zo
71
normal! zo
88
normal! zo
let s:l = 149 - ((72 * winheight(0) + 40) / 80)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
149
normal! 0
wincmd w
argglobal
terminal ++curwin ++cols=84 ++rows=9 
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 4) / 9)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
2argu
if bufexists('css/media.css') | buffer css/media.css | else | edit css/media.css | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 13 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 0
wincmd w
argglobal
2argu
if bufexists('css/font_face_ageo.css') | buffer css/font_face_ageo.css | else | edit css/font_face_ageo.css | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 4) / 9)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
2argu
if bufexists('css/style.css') | buffer css/style.css | else | edit css/style.css | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 46 - ((35 * winheight(0) + 33) / 66)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
46
normal! 034|
wincmd w
argglobal
2argu
if bufexists('css/responsive.css') | buffer css/responsive.css | else | edit css/responsive.css | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=2
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 9 - ((5 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 0
wincmd w
4wincmd w
exe '1resize ' . ((&lines * 80 + 47) / 94)
exe 'vert 1resize ' . ((&columns * 84 + 107) / 214)
exe '2resize ' . ((&lines * 9 + 47) / 94)
exe 'vert 2resize ' . ((&columns * 84 + 107) / 214)
exe '3resize ' . ((&lines * 1 + 47) / 94)
exe 'vert 3resize ' . ((&columns * 129 + 107) / 214)
exe '4resize ' . ((&lines * 9 + 47) / 94)
exe 'vert 4resize ' . ((&columns * 129 + 107) / 214)
exe '5resize ' . ((&lines * 66 + 47) / 94)
exe 'vert 5resize ' . ((&columns * 129 + 107) / 214)
exe '6resize ' . ((&lines * 11 + 47) / 94)
exe 'vert 6resize ' . ((&columns * 129 + 107) / 214)
tabnext 1
if exists('s:wipebuf') && s:wipebuf != bufnr('%')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=5 winwidth=84 shortmess=filnxtToO
set winminheight=1 winminwidth=10
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
