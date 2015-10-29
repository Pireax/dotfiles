set nocompatible
filetype off
if has('win32')||has('win64')
    set runtimepath+=~/.vim
endif
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'tomasr/molokai'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'

call vundle#end()
filetype plugin indent on

set undodir=~/vim-temp/undo//
set backupdir=~/vim-temp/backup//
set directory=~/vim-temp/swap//

set tabstop=4
set softtabstop=4
set expandtab

set relativenumber
set number
" set cursorline
set autoread

set backspace=indent,eol,start
set autoindent
set smartindent

set incsearch
set hlsearch
set magic

set foldenable
set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=1

" User Interface {{{
if has('gui_running')
    set guifont=Consolas:h12
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
    set guicursor+=n-v-c:blinkon0
endif
if &term=~'xterm\\|rxvt'
	let &t_ti.="\e[2 q"
	let &t_SI.="\e[6 q"
	let &t_EI.="\e[2 q"
	let &t_te.="\e[2 q"
	let &t_ut=''
endif
if $ConEmuANSI=='ON'
    set term=xterm
    set t_Co=256
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"
endif

set showmatch " show matching braces
set showcmd " show incomplete commands

set laststatus=2 " Always show statusbar
let g:airline_powerline_fonts=1 " populates airline dictionary with symbols

syntax on
colorscheme molokai

set encoding=utf8
"}}}

" Mappings {{{
map <C-n> :NERDTreeToggle<CR>
"}}}

set modelines=1
" vim: foldmethod=marker:foldlevel=0
