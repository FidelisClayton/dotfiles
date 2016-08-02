set nocompatible              " be iMproved, required

set nu                " Show line number
"set t_Co=256 

syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
"
"set cursorline
set nowrap

set showcmd " Show the commands on the bottom bar
set showmatch " When a bracket is inserted automatically jump to the matching one

" Tab and indenting
set tabstop=4 shiftwidth=4 softtabstop=0 expandtab smarttab

set foldenable " Enable code folding
set foldlevelstart=10 " Auto fold code on level 10 or more
set foldmethod=indent " Use indenting to fold

set hlsearch " Highlight search

set pastetoggle=<F10>  " Bind `F10` to `:set paste`

:let mapleader = ","

autocmd BufEnter * :syntax sync fromstart 

au FileType ruby setl sw=2 sts=2 et
au FileType eruby setl sw=2 sts=2 et

au BufRead,BufNewFile *.html.haml setfiletype=haml
autocmd BufNewFile,BufRead *.html.haml set syntax=haml

nnoremap <leader><space> :nohlsearch<CR>  " fold com a tecla espaço
nnoremap <space> za " fold com a tecla espaço

imap <C-c> <CR><Esc>O 
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>") 

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
"silent! map <F3> :NERDTreeFind<CR>
map <F2> :NERDTreeToggle<CR>

let NERDTreeQuitOnOpen=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30

" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=0
let g:syntastic_auto_loc_list=1

function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        Errors
    endif
endfunction

nnoremap <silent> <C-e> :<C-u>call ToggleErrors()<CR>


" ctrl.p
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode =0

let g:ctrlp_custom_ignore = 'node_modules\|bower_components\|WEB-INF'

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

map ,ac :CtrlP <CR>dev/js/controllers
map ,as :CtrlP <CR>dev/js/services
map ,djs :CtrlP <CR>dev/js
map ,ds :CtrlP <CR>dev/styles
map ,dv :CtrlP <CR>dev/views

" rails.vim
nnoremap ,vv :Rview<cr>
nnoremap ,cc :Econtroller<cr>

" EasyMotion
hi clear EasyMotionTarget
hi! EasyMotionTarget guifg=yellow
nmap ,<ESC> ,,w
nmap ,<S-ESC> ,,b

filetype plugin indent on  

" VimCSS3Syntax
augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END

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
Plugin 'tpope/vim-surround'
Plugin 'digitaltoad/vim-pug'
Plugin 'chriskempson/tomorrow-theme'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'tomtom/tcomment_vim'

" Syntax

Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'

call vundle#end()            " required
