"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"################################################################################## 文本格式和排版
"
set formatoptions=tcrqn		" 自动格式化
set autoindent				" 继承前一行的缩进方式，特别适用于多行注释
set smartindent				" 为C程序提供自动缩进
set cindent					" 使用C/C++样式的缩进, 使用V命令选中一段文本后，按'='调整格式
set cino=:0g0t0(sus			" 设定 C/C++ 风格自动缩进的选项
set ai                      " 打开普通文件类型的自动缩进
set expandtab			    " 用空格代替制表符
set smarttab				" 在行和段开始处使用制表符
set tabstop=4				" 制表符为4
set softtabstop=4			" 统一缩进为4
set shiftwidth=4
"set noexpandtab			" 不要用空格代替制表符
"set nowrap					" 不要换行
set lbr                     " 不再单词中间折行
set foldenable              " 用空格键来开关折叠
"set foldmethod=manual
"set foldmethod=marker
"set foldmethod=indent
set cursorline              " 设置横线 突出当前行
set cursorcolumn            " 设置竖线 突出当前列
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索和匹配 
set showmatch				" 高亮显示匹配的括号
set matchtime=10			" 匹配括号高亮的时间（单位是十分之一秒）
" set scrolloff=10			" 光标移动到buffer的顶部和底部时保持10行距离
set novisualbell			" 不要闪烁
set hlsearch				" 高亮搜索
set nowrapscan				" 查找到文件头或文件尾时停止
set incsearch				" 边输入边查找
set laststatus=2			" 总是显示状态行
" set ignorecase				" 在搜索的时候忽略大小写
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"文件设置
set shortmess=atI			" 启动的时候不显示那个援助索马里儿童的提示`
set report=0				" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set noerrorbells			" 不让vim发出讨厌的滴滴声
set fillchars=vert:\ ,stl:\ " 在被分割的窗口间显示空白，便于阅读, stlnc:\(加了这个wm分割兰有\\\\\\\\\\\\\)
"set mouse=a				" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
"set selection=exclusive
"set selectmode=mouse,key
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 一般设置
set viminfo+=!				" 保存全局变量
set history=300				" history文件中需要记录的行数
set nocompatible			" 不要使用vi的键盘模式，而是vim自己的
set foldmethod=syntax
set foldlevel=100			" 启动vim时不要自动折叠代码
"set nu
set relativenumber
set fileencodings=utf-8,gbk
set ruler
filetype on					" 侦测文件类型 
set nobackup				" 不要备份文件（根据自己需要取舍） 
"set backup
syntax enable
syntax on					" 语法高亮 
set magic					" 设置正则表达式
set backspace=indent,eol,start    " 这指明在插入模式下在哪里允许 <BS>删除光标前面的字符。
								  "逗号分隔的三个值分别指：行首的空白字符，换行符和插入模式开始处之前的字符。
set showcmd					" 在 Vim窗口右下角，标尺的右边显示未完成的命令
" 自动补全
:inoremap ( ()<ESC>i
:inoremap { {}<ESC>i
:inoremap [ []<ESC>i
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
setlocal noswapfile         " 不要生成swap文件，当buffer被丢弃的时候隐藏它
set bufhidden=hide
" 高亮字符，让其不受100列限制
:highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
:match OverLength '\%81v.*'
" 状态行颜色
:highlight StatusLine guifg=SlateBlue guibg=Yellow
:highlight StatusLineNC guifg=Gray guibg=White
" 修复ctrl+m
" 多光标操作选择的bug，但是改变了ctrl+v进行字符选中时将包含光标下的字符
" set selection=exclusive
set selection=inclusive
set selectmode=mouse,key
" theme主题
set background=dark
set t_Co=256
colorscheme molokai
hi Visual ctermbg=66

"设置标记一列的背景颜色和数字一行颜色一致
hi! link SignColumn   LineNr
hi! link ShowMarksHLl DiffAdd
hi! link ShowMarksHLu DiffChange

" for error highlight，防止错误整行标红导致看不清
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

"##################################################################################语法高亮(~/.vim/syntax/*.vim)
" markdown 语法高亮
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=markdown
" python 语法高亮
" au BufRead,BufNewFile *.{py}   set filetype=python
" c/c++ 语法高亮
au BufRead,BufNewFile *.{c,cpp,cc,h}   set filetype=cpp

"##################################################################################VUNDLE
set nocompatible               " be iMproved
filetype off                   " required!
filetype plugin indent on     " required!
 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
 
" ===================================================My Bundles here:
"
" ===================================================original repos on github
" Git 集成
Bundle 'tpope/vim-fugitive'
"移动
"Bundle 'Lokaltog/vim-easymotion'
"html
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"rails
Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/nerdtree'
Bundle 'AutoComplPop'
Bundle 'xml.vim'
Bundle 'Javascript-Indentation'

Plugin 'fatih/vim-go'
"let g:go_version_warning = 0

" ###################################################vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" ###################################################non github repos
"Bundle 'git://git.wincent.com/command-t.git'
"vim-powerline插件
Bundle 'https://github.com/Lokaltog/vim-powerline.git'
set laststatus=2
let g:Powerline_symbols = 'unicode'
set encoding=utf8

let b:javascript_fold=1
let javascript_enable_domhtmlcss=1

Bundle 'klen/python-mode'

" Python-mode
" Activate rope
" Keys: 按键：
" K             Show python docs 显示Python文档
" <Ctrl-Space>  Rope autocomplete  使用Rope进行自动补全
" <Ctrl-c>g     Rope goto definition  跳转到定义处
" <Ctrl-c>d     Rope show documentation  显示文档
" <Ctrl-c>f     Rope find occurrences  寻找该对象出现的地方
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled) 断点
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
"            跳转到前一个/后一个类或函数
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
"              跳转到前一个/后一个类或方法
let g:pymode_rope = 1

" Documentation 显示文档
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting 代码查错，=1为启用
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting 高亮形式
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code 禁用自动代码折叠
let g:pymode_folding = 0

" 格式化，自动对齐
Plugin 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" gaip*|
" ga	激活对齐插件
" ip	for inner par:graph	行内段落
" 按 | 对齐

" 自动生成tags, 依赖系统安装ctags
Plugin 'ludovicchabant/vim-gutentags'
" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']
" 所生成的数据文件的名称 "
let g:gutentags_ctags_tagfile = '.tags'
" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录 "
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 检测 ~/.cache/tags 不存在就新建 "
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif
" 配置 ctags 的参数 "
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" markdown 插件
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_new_list_item_indent = 0

" markdown预览, 轻量级预览插件，通过浏览器实时预览，需要安装grip
""Plugin 'JamshedVesuna/vim-markdown-preview'
" 渲染时展示图片
""let vim_markdown_preview_toggle=1
" 设置默认浏览器, mac默认safari
""let vim_markdown_preview_browser='Google Chrome'
" 删除临时html文件"
""let vim_markdown_preview_temp_file=1
" github readme风格
""let vim_markdown_preview_github=1
" Markdown.pl风格
""let vim_markdown_preview_perl=1
" pandoc风格
""let vim_markdown_preview_pandoc=1

"=================================================================华丽的分割线============================================================================
" Brief help  -- 此处后面都是vundle的使用命令
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
" VUNDLE 安装 : git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" PS1='${debian_chroot:+($debian_chroot)}\[\033[01;35;40m\]\u\[\033[01;00;40m\]@\[\033[01;35;40m\]\h\[\033[01;31;40m\]:\[\033[01;00;40m\]\w\[\033[01;32;40m\]\$\[\033[01;36;40m\]'
" PS1='\[\e[1;38m\]➜  \[\e[1;33m\]\u@\[\e[1;31m\]\w \[\e[1;36m\]✗ \[\e[0m\] '
" vim-gutentags需要系统安装ctags





