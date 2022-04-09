" 载入个人配置
exec "source " . fnamemodify($MYVIMRC, ':h') . "/config.vim"

" 定义载入配置命令
command! -nargs=1 LoadScript exec 'source ' . g:config_root_path . '<args>'
" 载入基础配置
LoadScript base.vim

" vim-plug 载入插件
" plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'
"
" plugins exists in ~/.cache/vim/plugins, defalut is ~/.vim/plugin
" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
call plug#begin(get(g:, 'plugins_install_path', '~/.vim/plugin/')) "
LoadScript layers.vim
call plug#end() " update &runtimepath and initialize plugin system

" 载入快捷键配置
LoadScript keymap.vim
" 载入主题配置
LoadScript theme/theme.vim
LoadScript theme/statusline.vim
LoadScript theme/tabline.vim

" 依据插件名字载入对应的插件配置
function s:source_config(plugName) abort " abort will stop func when error happens
    let l:config_path = g:plugins_config_root_path . a:plugName . ".vim"
    if filereadable(l:config_path)
        exec 'source' fnameescape(l:config_path)
    endif
endfunction

" TODO 从plug.vim中寻找何时载入插件
" 载入插件配置
" g:plugs loads after calling plug#begin()
" following code is to load plugs in config/plugins
" all plugs can be got from g:plugs_order(list) and g:plugs(dict)
" for [plugName, _] in items(g:plugs)
for plugName in g:plugs_order
    if common#functions#HasInstall(plugName)
        call s:source_config(plugName)
    endif
endfor
