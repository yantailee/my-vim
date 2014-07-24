set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'
Plugin 'tomasr/molokai'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'scrooloose/nerdcommenter'

call vundle#end()
filetype plugin indent on

syn on                          "语法高亮

set autoindent				    "自动缩进
set laststatus=2	            "总是显示状态行
set expandtab	 	            "以下三个配置配合使用，设置 tab 和缩进空格数
set shiftwidth=4
set tabstop=4
set cursorline		            "为光标所在行加下划线
set virtualedit=onemore         "光标移到最后一个字母后
set number			            "显示行号
set autoread		            "文件在 Vim 之外修改过，自动重新读入
set ruler                       "在编辑过程中，在右下角显示光标位置的状态行
set showmatch                   "显示匹配括号

set ignorecase		            "检索时忽略大小写
set fileencodings=utf-8,gbk	    "使用 utf-8 或 gbk 打开文件
set termencoding=utf-8
set encoding=utf-8
set hlsearch				    "检索时高亮显示匹配项
set incsearch                   "增量式搜索
set helplang=cn			        "帮助系统设置为中文

"用 jj 代替 <esc>
imap jj <esc>
"用 ,n 代替 :NERDTree, 设置 NERDTree 宽度
map ,n :NERDTree<CR>
let NERDTreeWinSize=22

"在 Vim 中实现括号自动补全
inoremap ( ()<esc>i
inoremap { {}<esc>i
inoremap [ []<esc>i
inoremap < <><esc>i

"molokai
colorscheme molokai

"neocomplcache.vim
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
