" let g:AutoPairsShortcutJump = '<M-n>'
" let g:AutoPairsShortcutBackInsert = '<M-N>'

"Default: '<M-e>'
"Fast wrap the word. all pairs will be consider as a block (include <>).
"(|)'hello' after fast wrap at |, the word will be ('hello')
"(|)<hello> after fast wrap at |, the word will be (<hello>)

" 自定义了c-h用来在插入模式进行光标移动
" 避免冲突
let g:AutoPairsMapCh = 0

" If <M-p> <M-e> or <M-n> conflict with another keys or want to bind to another keys, add
" let g:AutoPairsShortcutToggle = '<another key>'
" to .vimrc, if the key is empty string '', then the shortcut will be disabled.

let g:AutoPairsShortcutToggle = ''

" The default pairs is {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`'}
" You could also define multibyte pairs such as <!-- -->, <% %> and so on
augroup vime_auto_paris_group
    autocmd!
    au FileType php  let b:AutoPairs = AutoPairsDefine({'<?' : '?>', '<?php': '?>'})
    au FileType rust let b:AutoPairs = AutoPairsDefine({'\w\zs<': '>'})
    " add <!-- --> pair and remove '{' for html file
    au FileType html let b:AutoPairs = AutoPairsDefine({'<!--' : '-->'})
    au FileType md   let b:AutoPairs = AutoPairsDefine({'```':'```'})
augroup END
