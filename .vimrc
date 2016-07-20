set nocompatible
filetype off

filetype plugin indent on

set number 
set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab smarttab


imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>") "-> Use Tab key to expand emmet"

"============ Easy motion config ===========""

let g:EasyMotion_do_mapping = 0
nmap s <Plug>(easymotion-overwin-f)
nmap s <Plug>(easymotion-overwin-f2)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

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

set foldmethod=syntax

"============================================" 

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'easymotion/vim-easymotion'
Plugin 'wakatime/vim-wakatime'
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
