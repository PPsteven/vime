let g:better_whitespace_guicolor = 'white'
" 保存时自动删除空格
let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 1 " 保存时自动删除空格
let g:strip_whitespace_confirm = 0 " 删除空格时不用确认

" disable the highlighting for specific file types
let g:better_whitespace_filetypes_blacklist=[
            \ 'startify',
            \ 'diff',
            \ 'gitcommit',
            \ 'unite',
            \ 'qf',
            \ 'help',
            \ 'coc-explorer',
            \ 'vista',
            \ 'floaterm',
            \ 'dashboard'
            \ ]
