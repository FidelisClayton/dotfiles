set nocompatible
filetype off

filetype plugin indent on

set number 
set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab smarttab

let g:EasyMotion_do_mapping = 0

nmap s <Plug>(easymotion-overwin-f)
nmap s <Plug>(easymotion-overwin-f2)

let g:EasyMotion_smartcase = 1

map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'easymotion/vim-easymotion'
Plugin 'wakatime/vim-wakatime'

call vundle#end()
