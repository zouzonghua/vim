"--------------
" plugins
"--------------
call plug#begin('~/.vim/plugged')
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'airblade/vim-gitgutter'
 Plug 'tpope/vim-fugitive'

 Plug 'preservim/nerdtree'
 Plug 'Xuyuanp/nerdtree-git-plugin'
 Plug 'ryanoasis/vim-devicons'

 Plug 'morhetz/gruvbox'

 Plug 'airblade/vim-gitgutter'
 Plug 'tomtom/tcomment_vim'
 Plug 'jiangmiao/auto-pairs'
 Plug 'mattn/emmet-vim'

 Plug 'pangloss/vim-javascript'
 Plug 'peitalin/vim-jsx-typescript'
 Plug 'leafgarland/typescript-vim'

call plug#end()

"--------------
" Settings
"--------------
set clipboard=unnamed " 设置寄存器和系统剪切板通用
set noswapfile        " 不生成缓冲文件
set nocompatible      " 不与Vi 兼容（采用Vim 自己的操作命令)
set backspace=indent,eol,start " 解决退格键失效的问题
set updatetime=100    " 刷新时间
set mouse=a           " 支持使用鼠标

"--------------
" Filetype and Encoding
"--------------
filetype on         " 识别文件类型
filetype indent on  " 根据文件类型进行缩放
filetype plugin on  " 根据文件类型载入插件

"--------------
" file encoding
"--------------
set encoding=utf-8
scriptencoding utf-8

"--------------
" key mapping
"--------------
let mapleader = ","
