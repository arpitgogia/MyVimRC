" be iMproved
set nocompatible
filetype plugin on
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jiangmiao/auto-pairs'
" Git wrapper 
Plugin 'tpope/vim-fugitive'

" A tree explorer
Plugin 'scrooloose/nerdtree'

" Open NERDTree when there is no files
autocmd VimEnter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeIgnore = ['\.pyc$']
let g:NERDTreeWinSize = 40 
let NERDChristmasTree = 1
let NERDTreeMinimalUI = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Fuzzy file, buffer, mru, tag, etc finder. 
Plugin 'kien/ctrlp.vim'
set wildignore+=*.pyc
set wildignore+=*.jpg
nmap <C-e> :CtrlPBuffer<CR>
let g:ctrlp_map = '<c-f>'
let g:ctrlp_cmd = 'CtrlP'

" Extension for ctrlp.vim, to have a command palette like sublime text 2 
Plugin 'fisadev/vim-ctrlp-cmdpalette'
nmap <S-C-p> :CtrlPCmdPalette<CR>

" binding to the autocompletion library Jedi.
Plugin 'davidhalter/jedi-vim'
let g:pymode_folding = 0
" autocmd FileType python setlocal completeopt-=preview
" Syntax checking hacks
Plugin 'scrooloose/syntastic'
let g:syntastic_python_checkers=['flake8', 'python']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" Perform all your vim insert mode completions with Tab 
Plugin 'ervandew/supertab'

" lean & mean status/tabline for vim that's light as air 
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ''
let g:airline_powerline_fonts = 1
let g:airline_theme='papercolor'

" Vim plugin for the_silver_searcher, 'ag', a replacement for 'ack' 
Plugin 'rking/ag.vim'

" Provide easy code formatting in Vim by integrating existing code formatters. 
Plugin 'Chiel92/vim-autoformat'

" Close buffers
Plugin 'moll/vim-bbye'

Plugin 'airblade/vim-gitgutter'

Plugin 'majutsushi/tagbar'
let g:tagbar_width = 40

" All of your Plugins must be added before the following line
call vundle#end()            
filetype plugin indent on    
let mapleader=' '
" General configs
set nowrap
set tabstop=4
set backspace=indent,eol,start
set autoindent
set copyindent
set number
set shiftwidth=4
set shiftround
set showmatch
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch
set nobackup
set noswapfile
set expandtab
set hidden
nnoremap ; :
nmap <silent> ,/ :nohlsearch<CR>
set mouse=a
set pastetoggle=<F2>
imap <C-q> <c-o>:qa<CR>
nmap <C-q> :qa<CR>
imap <C-s> <c-o>:w<CR>
nmap <C-s> :w<CR>
"imap <c-w> <c-o>:Bdelete<CR>
"nmap <c-w> :Bdelete<CR>

set t_Co=256
set background=dark

" menu for competition in command line
set wildchar=<Tab> wildmenu wildmode=full
syntax on
let g:pyflakes_use_quickfix = 0
noremap <Leader>1  :b1<CR> 
noremap <Leader>2  :b2<CR> 
noremap <Leader>3  :b3<CR> 
noremap <Leader>4  :b4<CR> 
noremap <Leader>5  :b5<CR> 
noremap <Leader>6  :b6<CR> 
noremap <Leader>w  :Bdelete<CR> 
noremap <Leader>,  :bprevious<CR> 
noremap <Leader>.  :bnext<CR> 
nnoremap <silent> <Tab> :wincmd w<CR>
nnoremap <silent> <S-Tab> :wincmd W<CR>
noremap <leader>n :NERDTreeToggle<CR>
noremap <leader>s :NERDTreeFind<CR>
noremap <leader>t :TagbarToggle<CR>
nmap <leader>py :w<CR>:!python %<CR>
nmap <leader>pyt :w<CR>:!python3 %<CR>
nmap <leader>cpp :w<CR>:!g++ -g % & ./a.out<CR>
" invisible charts
set list
set listchars=tab:▸\ ,eol:¬,trail:.,extends:#,nbsp:.

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nmap <silent> > :5wincmd ><CR>
nmap <silent> < :5wincmd <<CR>
nmap <leader>f :Autoformat<CR>
colorscheme Tomorrow-Night-Bright
execute "silent! source $HOME/.vim/vim.local"
execute "silent! source .vim.local"
