let mapleader=" " "将leader（windows键）换成空格键
syntax on "显示高亮

" ===
" === Editor behavior
" ===
set number "显示行号
set relativenumber "显示相对行号
set cursorline "高亮显示当前行
set wrap "自动换行
set showcmd "显示指令
set wildmenu "菜单显示补全内容

set hlsearch "高亮显示搜索
exec "nohlsearch" 
set incsearch "动态高亮显示搜索
set ignorecase "不区分大小写换行
set smartcase "智能大小写搜索

set nocompatible "兼容老vim vi
"识别不同的文件格式
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set mouse=a "移动鼠标
set encoding=utf-8 "设置格式

let &t_ut='' "修复配色

"tab
set expandtab
set tabstop
set shiftwidth=2
set softtabstop=2

"显示空格
set list
set listchars=tab:\|\ ,trail:▫
set scrolloff=5

"缩进
set tw=0
set indentexpr=
set backspace=indent,eol,start "行首退格到行尾
set foldmethod=indent "收缩代码
set foldlevel=99

set laststatus=2 "状态栏
set autochdir "vim在当前文件目录下执行

"打开文件光标回到最后一次的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

noremap <LEADER><CR> :nohlsearch<CR>

map s <nop>
map S :w<CR>
map Q :q<CR>
map R :so %
map ; :

" ===
" === split 分屏操作
" ===
map sl :set splitright<CR>:vsplit<CR> "向右分屏
map sh :set nosplitright<CR>:vsplit<CR> "向左分屏
map sj :set splitbelow<CR>:split<CR> "向下分屏
map sk :set nosplitbelow<CR>:split<CR> "向上分屏

map <LEADER>l <C-w>l "向右分屏移动
map <LEADER>k <C-w>k "向左分屏移动
map <LEADER>h <C-w>h "向左分屏移动
map <LEADER>j <C-w>j "向左分屏移动

map tu :tabe<CR> "新建标签
map tl :+tabnext<CR> "向右标签
map th :-tabnext<CR> "向左标签

map sv <C-w>t<C-w>H "左右分屏
map sc <C-w>t<C-w>K "上下分屏

" ===
" === 插件
" ===
call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

call plug#end()

" ===
" === vim-snazzy配置
" ===
let g:SnazzyTransparent = 1
color snazzy
