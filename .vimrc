
set nocompatible
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" On-demand loading
Plugin 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plugin 'rust-lang/rust.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vhdirk/vim-cmake'
Plugin 'pboettch/vim-cmake-syntax'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

set backspace=2 "make backspace work like most other programs
set autoindent
set number
set tabstop=2
set shiftwidth=2
set expandtab

set textwidth=120
set t_Co=256
syntax on
set showmatch
autocmd BufEnter *.cmake,CMakeLists.txt,*.cmake.in :setlocal filetype=cmake
map <F2> :NERDTreeToggle<CR>
let g:ycm_erver_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
