set nocompatible
set hidden
set cursorline
set showcmd
set lazyredraw
set wildmenu
set showmatch
set incsearch
set hlsearch
set foldenable
set foldlevelstart=10
set foldmethod=indent

filetype plugin indent on

syntax on

nnoremap <leader><space> :nohlsearch<CR> 
nnoremap <space> za 

set number 
set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab smarttab

imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>") 


" CtrlP settings
"let g:ctrlp_match_window = 'bottom,order:ttb'
"let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
"let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

"Easy motion config

let g:EasyMotion_do_mapping = 0
nmap s <Plug>(easymotion-overwin-f)
nmap s <Plug>(easymotion-overwin-f2)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <F7> mzgg=G`z

"Vundle config

set rtp+=~/.vim/bundle/Vundle.vim

"HTML.vim config

let g:html5_event_handler_attributes_complete = 0
let g:html5_rdfa_attributes_complete = 0
let g:html5_microdata_attributes_complete = 0
let g:html5_aria_attributes_complete = 0

"Javascript.vim config

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

"Typescript-vim config
let g:typescript_indent_disable = 1


"NERD TREE config
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-k><C-b> :NERDTreeToggle<CR>

" Plugin key-mappings.
 imap <C-k>     <Plug>(neosnippet_expand_or_jump)
 smap <C-k>     <Plug>(neosnippet_expand_or_jump)
 xmap <C-k>     <Plug>(neosnippet_expand_target)
 
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" syntastic

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set laststatus=2

execute pathogen#infect()
syntax on
filetype plugin indent on

let g:tmuxline_preset = 'nightly_fox'
let g:tmuxline_powerline_separators = 0

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'easymotion/vim-easymotion'
Plugin 'wakatime/vim-wakatime'
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tmhedberg/matchit'
Plugin 'statianzo/vim-jade'
Plugin 'ternjs/tern_for_vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'leafgarland/typescript-vim'
Bundle 'magarcia/vim-angular2-snippets'
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'

call vundle#end()
