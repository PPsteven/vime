" Use new vim 8.2 popup windows for Go Doc
let g:go_doc_popup_window = 1

augroup vime_go_group
    autocmd!
    " Common Go commands
    au FileType go nmap <leader>r <Plug>(go-run)
    au FileType go nmap <leader>b <Plug>(go-build)
    au FileType go nmap <leader>t <Plug>(go-test)
    au FileType go nmap <leader>c <Plug>(go-coverage-toggle)
    au FileType go nmap <Leader>e <Plug>(go-rename)
    au FileType go nmap <Leader>s <Plug>(go-implements)
    au FileType go nmap <Leader>i <Plug>(go-info)

    " Navigation commands
    au FileType go nmap <Leader>ds <Plug>(go-def-split)
    au FileType go nmap <Leader>dv <Plug>(go-def-vertical)

    " Alternate commands
    au FileType go nmap <Leader>ae <Plug>(go-alternate-edit)
    au FileType go nmap <Leader>av <Plug>(go-alternate-vertical)
augroup END
