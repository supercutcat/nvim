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

noremap <LEADER><CR> :nohlsearch<CR>

map s <nop>
map S :w<CR>
map Q :q<CR>
map R :so %

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
