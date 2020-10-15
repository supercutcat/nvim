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

" Testing my own plugin
" Plug 'theniceboy/vim-calc'

" Pretty Dress
Plug 'bling/vim-bufferline'
Plug 'bpietravalle/vim-bolt'
Plug 'theniceboy/vim-deus'

"Plug 'arzg/vim-colors-xcode'

" Status line
Plug 'theniceboy/eleline.vim'
Plug 'ojroques/vim-scrollstatus'

" General Highlighter
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'RRethy/vim-illuminate'

" File navigation
"Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'kevinhwang91/rnvimr'
Plug 'airblade/vim-rooter'
Plug 'pechorin/any-jump.vim'

" Taglist
Plug 'liuchengxu/vista.vim'

" Debugger
" Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-c --enable-python --enable-go'}

" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'wellle/tmux-complete.vim'

" Snippets
" Plug 'SirVer/ultisnips'
Plug 'theniceboy/vim-snippets'

" Undo Tree
Plug 'mbbill/undotree'

" Git
Plug 'theniceboy/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }
Plug 'fszymanski/fzf-gitignore', { 'do': ':UpdateRemotePlugins' }
"Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'
Plug 'cohama/agit.vim'

" Autoformat
Plug 'Chiel92/vim-autoformat'

" Tex
" Plug 'lervag/vimtex'

" CSharp
Plug 'OmniSharp/omnisharp-vim'
Plug 'ctrlpvim/ctrlp.vim' , { 'for': ['cs', 'vim-plug'] } " omnisharp-vim dependency

" HTML, CSS, JavaScript, Typescript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'neoclide/jsonc.vim'
Plug 'othree/html5.vim'
Plug 'alvan/vim-closetag'
" Plug 'hail2u/vim-css3-syntax' " , { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
" Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
" Plug 'pangloss/vim-javascript', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'yuezk/vim-js', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
" Plug 'MaxMEllon/vim-jsx-pretty', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
" Plug 'jelera/vim-javascript-syntax', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
"Plug 'jaxbot/browserlink.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'posva/vim-vue'

" Go
Plug 'fatih/vim-go' , { 'for': ['go', 'vim-plug'], 'tag': '*' }

" Python
" Plug 'tmhedberg/SimpylFold', { 'for' :['python', 'vim-plug'] }
Plug 'Vimjas/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for' :['python', 'vim-plug'] }
"Plug 'vim-scripts/indentpython.vim', { 'for' :['python', 'vim-plug'] }
"Plug 'plytophogy/vim-virtualenv', { 'for' :['python', 'vim-plug'] }
Plug 'tweekmonster/braceless.vim', { 'for' :['python', 'vim-plug'] }

" Flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'f-person/pubspec-assist-nvim', { 'for' : ['pubspec.yaml'] }

" Swift
Plug 'keith/swift.vim'
Plug 'arzg/vim-swift'

" Markdown
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }
Plug 'dkarter/bullets.vim'

" Other filetypes
" Plug 'jceb/vim-orgmode', {'for': ['vim-plug', 'org']}

" Editor Enhancement
"Plug 'Raimondi/delimitMate'
Plug 'jiangmiao/auto-pairs'
Plug 'mg979/vim-visual-multi'
Plug 'tomtom/tcomment_vim' " in <space>cn to comment a line
Plug 'theniceboy/antovim' " gs to switch
Plug 'tpope/vim-surround' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'gcmt/wildfire.vim' " in Visual mode, type k' to select all text in '', or type k) k] k} kp
Plug 'junegunn/vim-after-object' " da= to delete what's after =
Plug 'godlygeek/tabular' " ga, or :Tabularize <regex> to align
Plug 'tpope/vim-capslock'	" Ctrl+L (insert) to toggle capslock
Plug 'easymotion/vim-easymotion'
" Plug 'Konfekt/FastFold'
"Plug 'junegunn/vim-peekaboo'
"Plug 'wellle/context.vim'
Plug 'svermeulen/vim-subversive'
Plug 'theniceboy/argtextobj.vim'
Plug 'rhysd/clever-f.vim'
Plug 'chrisbra/NrrwRgn'
Plug 'AndrewRadev/splitjoin.vim'

" For general writing
" Plug 'junegunn/goyo.vim'
"Plug 'reedes/vim-wordy'
"Plug 'ron89/thesaurus_query.vim'

" Bookmarks
" Plug 'MattesGroeger/vim-bookmarks'

" Find & Replace
Plug 'brooth/far.vim', { 'on': ['F', 'Far', 'Fardo'] }

" Documentation
"Plug 'KabbAmine/zeavim.vim' " <LEADER>z to find doc

" Mini Vim-APP
"Plug 'jceb/vim-orgmode'
"Plug 'mhinz/vim-startify'
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'

" Vim Applications
Plug 'itchyny/calendar.vim'

" Other visual enhancement
Plug 'ryanoasis/vim-devicons'
Plug 'luochen1990/rainbow'
Plug 'mg979/vim-xtabline'
Plug 'wincent/terminus'

" Other useful utilities
Plug 'lambdalisue/suda.vim' " do stuff like :sudowrite
" Plug 'makerj/vim-pdf'
"Plug 'xolox/vim-session'
"Plug 'xolox/vim-misc' " vim-session dep

" Dependencies
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'kana/vim-textobj-user'
" Plug 'roxma/nvim-yarp'
call plug#end()

