Plug 'neoclide/coc.nvim', { 'branch': 'release' } " select branch

Plug 'antoinemadec/coc-fzf',  {'branch': 'release'}

" reference: https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions
" coc extensions can providing a better user experience like vscode
"
" a.Install by commend
" :CocInstall coc-json coc-css
" b.Install by global variables, coc will install the missing extensions
" after coc.nvim service started.
" coc插件列表，可根据需要进行删减
let g:coc_global_extensions = [
    \ 'coc-vimlsp',
    \ 'coc-xml',
    \ 'coc-yank',
    \ 'coc-sh',
    \ 'coc-yaml',
    \ 'coc-cmake',
    \ 'coc-snippets',
    \ 'coc-clangd',
    \ 'coc-json',
    \ 'coc-lists',
    \ 'coc-just-complete',
    \ 'coc-python',
    \ 'coc-marketplace',
    \ 'coc-java',
  \ ]
