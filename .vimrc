

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
 
 
"Adds color to the statusline
Plug 'itchyny/lightline.vim'

"adds comments to block of text (gcc for line) 
Plug 'tpope/vim-commentary'
set laststatus=2
if !has('gui_running')
	set t_Co=256
endif 

"Add fix folding for python
Plug 'https://github.com/tmhedberg/SimpylFold'

" Enable folding
"set foldmethod=indent
"set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


call plug#end()
