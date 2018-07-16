

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

"should add color to the statusline
Plug 'itchyny/lightline.vim'

"adds comments to block of text (gcc for line) 
Plug 'tpope/vim-commentary'
set laststatus=2
if !has('gui_running')
	set t_Co=256
endif 

call plug#end()
