" =============== Vim Plugin to increase efficiency ========
" 模糊检索
Plug 'junegunn/fzf', { 'do': {-> fzf#install()} }
" Plug 'fszymanski/fzf-gitignore', {'do': ':UpdateRemotePlugins'}
Plug 'junegunn/fzf.vim' | Plug 'antoinemadec/coc-fzf',  {'branch': 'release'}

" global search tool --ack
Plug 'mileszs/ack.vim'

" 注释
Plug 'scrooloose/nerdcommenter'
" 生成注释文档
" Plug 'kkoomen/vim-doge', {'do': {-> doge#install()}}
" 数据库
" Plug 'tpope/vim-dadbod' | Plug 'kristijanhusak/vim-dadbod-ui' | Plug 'kristijanhusak/vim-dadbod-completion'
" 全局替换插件
" Plug 'brooth/far.vim'

" 按键查找
" Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] } " on demands

" 函数列表
" Plug 'liuchengxu/vista.vim', {'on': ['Vista!!', 'Vista']}
Plug 'liuchengxu/vista.vim'

" 添加，修改，删除引号，中括号等surroundings
" Plug 'tpope/vim-surround'
" Plug 'machakann/vim-sandwich'

" 代码段
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

" 快速选择窗口
" Plug 't9md/vim-choosewin'
" 对齐
Plug 'junegunn/vim-easy-align', {'on': ['EasyAlign', '<Plug>(EasyAlign)']}
" 多光标
Plug 'mg979/vim-visual-multi'

" csv插件
" Plug 'chrisbra/csv.vim', {'for': 'csv'}

" 悬浮终端
Plug 'voldikss/vim-floaterm', {'on': ['FloatermNew', 'FloatermToggle']}
" 关闭buffer而不关闭窗口
" Plug 'rbgrouleff/bclose.vim', {'on': 'Bclose'}

if has('nvim')
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/nvim-treesitter-textobjects'
    Plug 'nvim-treesitter/nvim-treesitter-refactor'
    Plug 'romgrk/nvim-treesitter-context'
else
    Plug 'sheerun/vim-polyglot'
    Plug 'octol/vim-cpp-enhanced-highlight'
endif

" Plugin to move lines and selections up and down
" Plug 'matze/vim-move', {'on': [
            " \ '<Plug>MoveBlockDown',
            " \ '<Plug>MoveBlockUp',
            " \ '<Plug>MoveBlockRight',
            " \ '<Plug>MoveBlockLeft']}

" A Vim plugin to visualizes the Vim undo tree.
" if has("nvim")
    " Plug 'simnalamburt/vim-mundo'
" endif

" ======================= Read & Write ============================
" 专注阅读
Plug 'junegunn/goyo.vim', { 'on': 'Goyo', 'for': 'markdown' }
\ | Plug 'junegunn/limelight.vim', { 'on': 'Limelight' }

" 英文语法检查
Plug 'rhysd/vim-grammarous', {'for': ['markdown', 'vimwiki', 'md', 'tex']}

" latex插件
" Plug 'lervag/vimtex', {'for': 'tex'}
" Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}

" markdown 预览插件
" if install failed then run :call mkdp#util#install() mannual
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug', 'vimwiki'], 'on': 'MarkdownPreview'}
" Plug 'mzlogin/vim-markdown-toc', {'on': ['GenTocGFM', 'GenTocRedcarpet', 'GenTocGitLab', 'GenTocMarked']}

" 翻译插件
Plug 'iamcco/dict.vim', {'on':
    \ [
    \ '<Plug>DictSearch', '<Plug>DictVSearch', '<Plug>DictWSearch',
    \ '<Plug>DictWVSearch', '<Plug>DictRSearch', '<Plug>DictRVSearch'
    \ ]}

" 笔记插件，支持markdown
Plug 'vimwiki/vimwiki'
" Plug 'SidOfc/mkdx'

" ---------- vim 窗口操作---------------
Plug 'fgheng/ResizeWindow.vim'

" 最大化窗口，ctrl w o
Plug 'troydm/zoomwintab.vim', {'on': 'ZoomWinTabToggle'}

" 通过命令行打开游览器
" Plug 'tyru/open-browser.vim'
" Plug 'ojroques/vim-scrollstatus'

" 文件操作插件
" Allows one to edit a file with prevledges from an unprivledged session.
" Plug 'lambdalisue/suda.vim'

" 在命令行使用linux命令新建文件文件夹重命名当前buffer等
Plug 'tpope/vim-eunuch', {'on': ['Mkdir', 'Rename', 'Unlink', 'Delete', 'Move', 'Chmod', 'Cfind', 'Clocate', 'Lfine', 'Llocate', 'SudoEdit', 'SudoWrite', 'Wall', 'W']}

" =============== Vim Plugin to enhance vim command  =========================
" 增加基础vim 功能

" 重复上次的动作, 使得. 能够重复插件的映射命令
Plug 'tpope/vim-repeat'

" 快速移动, 加强f 移动功能
Plug 'easymotion/vim-easymotion', {'on':
   \ [
   \ '<Plug>(easymotion-bd-f)', '<Plug>(easymotion-overwin-f)',
   \ '<Plug>(easymotion-overwin-f2)', '<Plug>(easymotion-bd-jk)',
   \ '<Plug>(easymotion-overwin-line)', '<Plug>(easymotion-bd-w)',
   \ '<Plug>(easymotion-overwin-w)', '<Plug>(easymotion-s)',
   \ ]}

" 功能很强的折叠插件, 能根据不同语言的语义进行折叠, zc zo
Plug 'pseewald/vim-anyfold', {'on': 'AnyFoldActivate'}

" 平滑滚动, 对<c-u> <c-d> 加强平滑移动
Plug 'psliwka/vim-smoothie'

" 加强版的 go to file
" Plug 'tpope/vim-apathy'

" 加强正则替换
" Plug 'markonm/traces.vim'

" =============== Vim Plugin (no keyshort)  =========================
" 记录了一些无需快捷键，即开即用的插件

" 缩进线
" Plug 'Yggdroot/indentLine', {'on': 'IndentLinesEnable'}
if has('nvim')
    " 缩进线
    Plug 'glepnir/indent-guides.nvim'
endif

" 目录
" Plug 'preservim/nerdtree'
if has('nvim')
  Plug 'kyazdani42/nvim-tree.lua'
endif

" 自动补全括号
Plug 'jiangmiao/auto-pairs'

if has("nvim")
    " 高亮显示，跳转，操作matching words
    Plug 'andymass/vim-matchup'
endif

" 彩虹括号
" if has('nvim')
    " Plug 'p00f/nvim-ts-rainbow'
" else
    " Plug 'luochen1990/rainbow'
" endif

" 显示清除尾部空格
Plug 'ntpeters/vim-better-whitespace'

" 在右侧显示一个滚动条, 可鼠标拖动
" if has('nvim')
    " Plug 'dstein64/nvim-scrollview'
" endif

" 显示搜索的数量
Plug 'kevinhwang91/nvim-hlslens'

" tmux相关插件
if  executable("tmux") && strlen($TMUX)
    " tmux与vim窗口间导航
    Plug 'christoomey/vim-tmux-navigator'
    " tmux.conf set -g focus-events on
    Plug 'tmux-plugins/vim-tmux-focus-events'
    " 在tmux和vim之间进行复制与粘贴
    " Plug 'roxma/vim-tmux-clipboard'
    " tmux补全插件
    Plug 'wellle/tmux-complete.vim'
endif

" 起始界面
Plug 'mhinz/vim-startify'
" 查看启动时间，配合vim-startify
Plug 'dstein64/vim-startuptime', {'on':'StartupTime'}

" vim中文文档
Plug 'yianwillis/vimcdoc'

" 顶栏和底栏
" Plug 'romgrk/barbar.nvim'
" Plug 'rbong/vim-crystalline'
Plug 'itchyny/lightline.vim'
" Plug 'liuchengxu/eleline.vim'
" Plug 'hoob3rt/lualine.nvim'

" provide icons to various vim plugins
if has('nvim')
    Plug 'kyazdani42/nvim-web-devicons'
else
    Plug 'ryanoasis/vim-devicons'
endif

" git插件
Plug 'tpope/vim-fugitive'

if has('nvim')
    Plug 'nvim-lua/plenary.nvim' | Plug 'tanvirtin/vgit.nvim'
else
    Plug 'rbong/vim-flog' | Plug 'airblade/vim-gitgutter'
    " " Plug 'f-person/git-blame.nvim'
endif

Plug '907th/vim-auto-save'

" =============== Vim Plugin for developing =========================
" python
" Plug 'davidhalter/jedi-vim'

" c debug
" Plug 'puremourning/vimspector'

" Front End
" 总是匹配tag
" always highlights the XML/HTML tags that enclose your cursor location
" Plug 'valloric/MatchTagAlways', {'for': ['html', 'css', 'xml']}
" 显示颜色 例如: #654456
" if has('nvim')
    " Plug 'norcalli/nvim-colorizer.lua'
" else
    " Plug 'RRethy/vim-hexokinase',  { 'do': 'make hexokinase' }
" endif

" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" cpp
" compile and run cpp
LoadScript layers/cpp.vim
" =============== others =========================
" 隐私模式
" Plug 'ernstwi/vim-secret'

" diff two direcotries like BeycondCompare
" Plug 'ZSaberLv0/ZFVimDirDiff'
