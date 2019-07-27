" to use these macros , :source % in vim
" run macro by typing @[qhr] in normalmode
" fix for {-s,--short}
let @q = "0wvt'yPr)F,r _r(i'^[xf)a'^[x0"
" fix -h,--help set to single
let @h = "0f{I'(1 - *"
" do not repeat if already on cmdline, add a '(-o --opt)' before {-o,--opt}
command! -range C s/\(^\s\+\)\({\(--\?\a\w*,\?\)\{2,\}}\)/\1'\2'\2/ | s/{/(/ | s/}/)/ | s/,/ /

command! Ca g/\(^\s\+\)\({\(--\?\a\w*,\?\)\{2,\}}\)/ s/\(^\s\+\)\({\(--\?\a\w*,\?\)\{2,\}}\)/\1'\2'\2/ | s/{/(/ | s/}/)/ | s/,/ /

" sort on -opt
command! -range Csort '<,'>sort i /[^ (]\<\zs--\?\ze\a\+/

command! -range Cdesc '<,'>g/[·\[^:']\]*]/

" command! -


