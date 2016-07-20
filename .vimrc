set nocompatible
set hidden
filetype off

filetype plugin indent on

syntax on

set number 
set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab smarttab
"set foldmethod=syntax

imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>") 

"============ Easy motion config ===========""

let g:EasyMotion_do_mapping = 0
nmap s <Plug>(easymotion-overwin-f)
nmap s <Plug>(easymotion-overwin-f2)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <F7> mzgg=G`z

"============================================" 


"============  Vundle config  ===============" 

set rtp+=~/.vim/bundle/Vundle.vim

"============ HTML.vim config ===============" 

let g:html5_event_handler_attributes_complete = 0
let g:html5_rdfa_attributes_complete = 0
let g:html5_microdata_attributes_complete = 0
let g:html5_aria_attributes_complete = 0

"============================================" 

"=========    Javascript.vim config =========" 

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

"============================================" 

"=========== NERD TREE config ===============" 

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-k><C-b> :NERDTreeToggle<CR>

"============================================" 
execute pathogen#infect()
syntax on
filetype plugin indent on

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

call vundle#end()
