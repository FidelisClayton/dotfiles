# vim-config
## Install .vimrc

### 1st Install Vundle
> $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

### 2nd Install Plugins
> $ vim +PluginInstall +qall

### 3rd Install Tern
> $ cd ~/.vim/bundle/tern_for_vim && npm install

### 4th Install YouCompleteMe
> $ cd ~/.vim/bundle/YouCompleteMe/

> $ apt-get install python-dev cmake

> $ git submodule update --init --recursive

> $ ./install.py --tern-completer 

## Custom shortcuts

| Command        | Action       |
| ------------- |:-------------:|
| , | Leader key|
| CTRL + K + B   | Toggle NERDTree |
| , ESC | Start EasyMotion |
| ,vv | Jump to controller's view (Rails)|
| ,cc | Jump to view's controller (Rails)|
| ,ja | Start Ctrlp on app/assets folder|
| ,jm | Start Ctrlp on app/models folder|
| ,jc | Start Ctrlp on app/controller folder|
| ,jv | Start Ctrlp on app/views folder|
| ,jd | Start Ctrlp on db folder|
