set nocompatible              " be iMproved, required
filetype off  

set nu " Mostrar número das linhas
set t_Co=256
syntax on

set cursorline

set showcmd " mostrar as teclas de ação na barra
set showmatch
set tabstop=4 shiftwidth=4 softtabstop=0 expandtab smarttab

set foldenable
set foldlevelstart=10
set foldmethod=indent


nnoremap <leader><space> :nohlsearch<CR>  " fold com a tecla espaço
nnoremap <space> za " fold com a tecla espaço

imap <C-c> <CR><Esc>O "Ctrl+C quebra linha e posiciona o curso dentro das {, [, "
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")  " Usar emmet com a tecla tab

" YouCompleteMe
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

" Tmux
let g:tmuxline_preset = 'nightly_fox'
let g:tmuxline_powerline_separators = 0

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Indentline
let g:indentLine_color_term = 239
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '_'

" NERDtree
map <C-k><C-b> :NERDTreeToggle<CR> 

filetype plugin indent on  

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate' " Fecha a chaves, parenteses, aspas...
Plugin 'scrooloose/syntastic' " Syntax lint
Plugin 'Valloric/YouCompleteMe' "Autocomplete
Plugin 'marijnh/tern_for_vim' "Autocomplete para JS
Plugin 'bling/vim-airline' " Interface
Plugin 'Yggdroot/indentLine' 
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'

" Syntax

Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'

call vundle#end()            " required
