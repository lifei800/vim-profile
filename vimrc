execute pathogen#infect()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  默认编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
language messages zh_CN.utf-8

set encoding=utf-8
let &termencoding=&encoding
set langmenu=zh_CN.UTF-8

set fileencodings=utf-8,ucs-bom,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
set helplang=cn

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文本格式和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"保存关闭文件之前保留一个备份
"set writebackup

"开启/关闭备份文件
"set backup
set nobackup

" 备份文件放在指定目录
"set backupdir=$VIM/tmp

"设置命令模式下输入法问题
set noimd

" 在状态行显示目前所执行的命令，未完成的指令片段亦会显示出来
set showcmd

" 在切换buffer时自动保存当前文件
set autowrite

" 分为三部分命令：file on, file plugin on, file indent on.分别表示自动识别文件类型，用文件类型脚本，使用缩进定义文件。
filetype plugin indent on

" 总是显示状态行
set laststatus=2

" 语法高亮
syntax on

" 文件插件支持
filetype plugin  on

" 用浅色高亮当前行
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul

" 在处理未保存或只读文件的时候，弹出确认
set confirm

" 行内替换
set gdefault

set nocompatible

" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

"不使用"Shift + 方向键"选择文本， "Shift + 方向键"代表向指定方向跳一个单词。
"如果你喜欢这项功能的话， 可以使用“set keymodel=startsel,stopsel”打开它。
set keymodel=startsel

" 禁用swf交换文件
set noswapfile

"没有声音
"set novisualbell

"设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
set showmatch

"光标移动到buffer的顶部和底部时保持5行距离
set scrolloff=5

" 设置右侧竖线
set cc=78

set lbr

"游标不要再闪了
"set gcr=a:blinkon0

"关闭插入模式
"set im!

"横向滚动条
"set guioptions+=b

"设置退格键可用
set backspace=2

"光标从行首和行末时可以跳到另一行去
set whichwrap=b,s,<,>,[,]

"显示不可见字符
set nolist

"设置不可见字符
set listchars=eol:\|\,tab:>-,trail:-,extends:>,precedes:<

"自动设置目录为正在编辑的文件所在的目录
set autochdir

"没有保存的缓冲区可以自动被隐藏
"set hidden

" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=5

" 关闭预览
set completeopt=menu

"按完整单词折行
set nolinebreak

"搜索时忽略大小写
set ignorecase

"高亮显示搜索结果,搜索逐字符高亮
set hlsearch
set incsearch

"匹配括号的规则，增加针对html的<>
set matchpairs=(:),{:},[:],<:>

"分割窗口时保持相等的宽/高
set equalalways

"设置行距
set linespace=5

"自动换行
set wrap

set tw=0

"不自动换行
set nowrap

"整词换行
set linebreak

"换行时行间交错使用4个空格,统一缩进为4
set shiftwidth=4
set softtabstop=4

" 自动格式化
set formatoptions=tcrqn

" 继承前一行的缩进方式，特别适用于多行注释
set autoindent

" 为C程序提供自动缩进
set smartindent

" 使用C样式的缩进
set cindent

"文件类型缩进
filetype indent on

" 制表符代替空格
set tabstop=2
set expandtab

" 不要用空格代替制表符
"set noexpandtab

" 在行和段开始处使用制表符
set smarttab

"自动读取改变后的文件
set autoread

"打开代码颜色设置
syntax enable

" 设定命令行的行数
set cmdheight=1

"设置左侧距离
set foldcolumn=1

"显示行号
set nu
"set rnu

"隐藏菜单
set guioptions-=m

"隐藏工具栏
set guioptions-=T

"禁止显示滚动条
set guioptions-=l  
set guioptions-=L  
set guioptions-=r  
set guioptions-=R  

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key

"通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

"在被分割的窗口间显示空白，便于阅读
set fillchars=vert:/,stl:/,stlnc:/

" 打开状态栏标尺
set ruler

" 启动的时候不显示那个援助索马里儿童的提示
set shortmess=atI

"使用反斜杠目录补全
set shellslash

"历史记录
set history=100

"置粘贴模式，这样粘贴就不会错位
set paste

" 增强模式中的命令行自动完成操作
set wildmenu

" 让 Tohtml 产生有 CSS 语法的 html
let html_use_css=1

"光标下划线
"hi CursorLine    guifg=NONE    guibg=NONE    gui=underline

"高亮当前行样式
"set cursorline

"高亮当前列样式
set cursorcolumn

" ambiwidth 默认值为 single。在其值为 single 时,
" 若 encoding 为 utf-8，gvim 显示全角符号时就会
" 出问题，会当作半角显示。
set ambiwidth=double


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 快捷键设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 垂直分割当前窗口
nmap wv     <C-w>v
" 关闭当前窗口
nmap wc     <C-w>c
" 水平分割当前窗口
nmap ws     <C-w>s

"emmet 快捷键
imap <c-e> <c-y>,
" 使用F2来取消搜索/替换的加亮显示
imap <silent> <F2> <C-O>:nohlsearch<CR>
"补全快捷键
imap <c-k> <C-x><C-u>
imap <a-l> <C-x><C-f>
imap <c-l> <C-x><C-o>
"空格跳字符串
map <space> W
map <s-space> B
"定义缩进快捷键
nmap <tab> v>
nmap <s-tab> v<
vmap <tab> >gv
vmap <s-tab> <gv
if has("win32") && has("gui_running")
    imap  <C-S> <ESC>:if expand("%") == ""<Bar>browse confirm w<Bar>else<Bar>confirm w<Bar>endif<CR>a
    nmap  <C-S> :if expand("%") == ""<Bar>browse confirm w<Bar>else<Bar>confirm w<Bar>endif<CR>
endif
nmap <M-h> :TOhtml<CR>:wq<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 折叠设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"折叠方式,
"manual手工定义折叠
"indent更多的缩进表示更高级别的折叠
"expr用表达式来定义折叠
"syntax用语法加亮来定义折叠
"diff对没有更改的文本进行折叠
"marker对文中的标志折叠
set foldmethod=marker
"标志折叠匹配折叠选项
set foldmarker={{{,}}}
"表达式匹配折叠选项
"set foldexpr=(getline(v:lnum-1)=~'^\\s*$'&&getline(v:lnum)=~'\\S')?'>1':1  "空行折叠
set foldlevel=1 " 设置全部打开

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  字体设置与主题
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 设置颜色 256色
set t_Co=256

"主题设置 grey2,molokai
if has("gui_running")
  colorscheme base16-atelier-dune
else
  colorscheme Tomorrow-Night-Bright
endif
" 设置字体
if has("win32") && has("gui_running")
   "set gfw=Consolas:h21:cGB2312
    set guifont=Courier_new:h17,Monaco:h17:w7,Courier_New:h19:cANSI,Lucida_Console:h18:cANSI
else
    set guifont=Andale\ Mono:h18
endif

" 状态行内容
if has("gui_running")
    "hi StatuslineBufNr     cterm=none    ctermfg=black  ctermbg=cyan    gui=none guibg=#840c0c guifg=#ffffff
    "hi StatuslineFlag      cterm=none    ctermfg=black  ctermbg=cyan    gui=none guibg=#bc5b4c guifg=#ffffff
    "hi StatuslinePath      cterm=none    ctermfg=white  ctermbg=green   gui=none guibg=#8d6c47 guifg=black
    "hi StatuslineFileName  cterm=none    ctermfg=white  ctermbg=blue    gui=none guibg=#d59159 guifg=black
    "hi StatuslineFileEnc   cterm=none    ctermfg=white  ctermbg=yellow  gui=none guibg=#ffff77 guifg=black
    "hi StatuslineFileType  cterm=bold    ctermbg=white  ctermfg=black   gui=none guibg=#acff84 guifg=black
    "hi StatuslineTermEnc   cterm=none    ctermbg=white  ctermfg=yellow  gui=none guibg=#77cf77 guifg=black
    "hi StatuslineChar      cterm=none    ctermbg=white  ctermfg=yellow  gui=none guibg=#66b06f guifg=black
    "hi StatuslineSyn       cterm=none    ctermbg=white  ctermfg=yellow  gui=none guibg=#60af9f guifg=black
    "hi StatuslineRealSyn   cterm=none    ctermbg=white  ctermfg=yellow  gui=none guibg=#5881b7 guifg=black
    "hi StatusLine          cterm=none    ctermbg=white  ctermfg=yellow  gui=none guibg=#3f4d77 guifg=#729eb0
    "hi StatuslineTime      cterm=none    ctermfg=black  ctermbg=cyan    gui=none guibg=#3a406e guifg=#000000
    "hi StatuslineSomething cterm=reverse ctermfg=white  ctermbg=darkred gui=none guibg=#c0c0f0 guifg=black
    "hi StatusLineNC   gui=none guibg=#304050 guifg=#70a0a0
    "set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"[%Y-%m-%d\ %H:%M]\")}
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let mapleader= "\"
nmap <leader>v "+gp
nmap <leader>c "+y

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config BufExplorer
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0       " Do not show default help.
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSortBy='mru'        " Sort by most recently used.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTree_title="[NERDTree]"
nmap <silent> <F3> :NERDTreeToggle<cr>

if has("gui_running")
  autocmd VimEnter * NERDTree
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config Winmanager
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:winManagerWindowLayout="FileExplorer|TagList,BufExplorer"
nmap <silent> <F4> :WMToggle<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config Calendar
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <F5> :Calendar<cr>



 au BufRead,BufNewFile *.wpy setlocal filetype=vue.html.javascript.css
