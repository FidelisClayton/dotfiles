set nocompatible
set t_Co=256
filetype plugin indent on
syntax on
set background=dark
colorscheme distinguished

call plug#begin('~/.vim/plugged')

try
    source ~/.vim/configs/plugs.vim
    source ~/.vim/configs/ctrlp.vim
    source ~/.vim/configs/maps.vim
    source ~/.vim/configs/nerdtree.vim
    source ~/.vim/configs/syntastic.vim
    source ~/.vim/configs/javascript.vim
    source ~/.vim/configs/indentline.vim
catch
endtry

set timeoutlen=1000
set ttimeoutlen=0

set noswapfile
set conceallevel=1
set showcmd " Show command in status line
set showmatch " Show matching brackets.
set showmode " Show current mode
set ruler " Show the line and column of the cursor
set number " Show the line numbers
set formatoptions+=o " Continue comment marker in new lines
set textwidth=0 " " Hard-wrap long lines as you type them.
set expandtab " Tabs to spaces
set tabstop=4 " Tabs witch 4 spaces
set shiftwidth=4

set noerrorbells " No beeps
set modeline " Enable modeline
set esckeys " Cursor keys in insert mode
set linespace=0 " Set line-spacing to minimum
set nojoinspaces " Prevents inserting two spaces after punctuation on a join (J)

set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

if !&scrolloff
  set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
  set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
set display+=lastline
set nostartofline       " Do not jump to first character with page commands.

" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list                " Show problematic characters.

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/

set hlsearch            " Highlight search results.
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set incsearch           " Incremental search.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

call plug#end()
