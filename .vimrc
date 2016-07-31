set nocompatible              " be iMproved, required

set nu " Mostrar número das linhas
set t_Co=256

syntax on
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
"
set cursorline
set nowrap

set showcmd " mostrar as teclas de ação na barra
set showmatch
set tabstop=4 shiftwidth=4 softtabstop=0 expandtab smarttab

set foldenable
set foldlevelstart=10
set foldmethod=indent

:let mapleader = ","

autocmd BufEnter * :syntax sync fromstart

au FileType ruby setl sw=2 sts=2 et
au FileType eruby setl sw=2 sts=2 et

au BufRead,BufNewFile *.html.haml setfiletype=haml
autocmd BufNewFile,BufRead *.html.haml set syntax=haml

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
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_branch_prefix = '⭠ '
let g:airline_readonly_symbol = '⭤'
let g:airline_linecolumn_prefix = '⭡'

" Indentline
let g:indentLine_color_term = 239
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '_'

" NERDtree
map <C-k><C-b> :NERDTreeToggle<CR> 
let NERDTreeQuitOnOpen=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30

" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=0
let g:syntastic_auto_loc_list=1
let g:syntastic_quiet_messages=0

" ctrl.p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
nnoremap <silent> <D-P> :ClearCtrlPCache<cr> " limpar o cache
map ,ja :CtrlP <CR>app/assets " ,ja para abrir app/assets
map ,jm :CtrlP <CR>app/models
map ,jc :CtrlP <CR>app/controllers
map ,jv :CtrlP <CR>app/views
map ,jh :CtrlP <CR>app/helpers
map ,jl :CtrlP <CR>lib
map ,jp :CtrlP <CR>public
map ,js :CtrlP <CR>spec
map ,jf :CtrlP <CR>fast_spec
map ,jd :CtrlP <CR>db
map ,jC :CtrlP <CR>config
map ,jV :CtrlP <CR>vendor
map ,jF :CtrlP <CR>factories
map ,jT :CtrlP <CR>test

" rails.vim
nnoremap ,vv :Rview<cr>
nnoremap ,cc :Econtroller<cr>

" EasyMotion
hi clear EasyMotionTarget
hi! EasyMotionTarget guifg=yellow
nmap ,<ESC> ,,w
nmap ,<S-ESC> ,,b

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
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-haml'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-rails'
Plugin 'easymotion/vim-easymotion'

" Syntax

Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'

call vundle#end()            " required
