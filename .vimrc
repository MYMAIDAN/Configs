
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
"Plugin 'Rip-Rip/clang_complete'
Plugin 'vhdirk/vim-cmake'
Plugin 'pboettch/vim-cmake-syntax'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'jiangmiao/auto-pairs'
Plugin 'majutsushi/tagbar'
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
map <F8> :TagbarToggle<CR>

let g:ycm_erver_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

"Clang-completer                                                                
"" Включить дополнительные подсказки (аргументы функций, шаблонов и т.д.)        
"let g:clang_snippets=1                                                          
" Использоать ultisnips для дополнительных подскахок (чтобы подсказки шаблонов  
" " автогенерации были в выпадающих меню)                                         
" let g:clang_snippets_engine = 'ultisnips'                                       
" " Периодически проверять проект на ошибки                                       
" let g:clang_periodic_quickfix=1                                                 
" " Подсвечивать ошибки                                                           
"let g:clang_hl_errors=1
" " Автоматически закрывать окно подсказок после выбора подсказки                 
"let g:clang_close_preview=1                                              
" " По нажатию Ctrl+F проверить поект на ошибки                                   
"map <c-f> :call g:ClangUpdateQuickFix()<cr>
