set expandtab
set shiftwidth=4
syntax enable
set tabstop=4
set softtabstop=4
set expandtab
set number
set showcmd
"set cursorline
set wildmenu
set showmatch
set rnu
set ruler
set incsearch
set hlsearch
set foldenable
set foldlevelstart=10
set foldnestmax=10
set cursorline
set cindent
"set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized
"colorscheme calmar256-dark
colorscheme cyberpunk
:imap <C-BS> <C-W>
"VUNDLE CONFIG
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
