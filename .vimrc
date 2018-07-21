

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

"Auto indent when function spans multiple lines
Plug 'https://github.com/vim-scripts/indentpython.vim'

"Auto complete words
Plug 'https://github.com/Valloric/YouCompleteMe'
"remove preview window for auto complete
set completeopt-=preview
"let g:ycm_autoclose_preview_window_after_completion = 1


"line numbering
set nu

"Set indent according to PEP (python) standards
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

"indent for js, html and css
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" Enable folding with the spacebar
nnoremap <space> za

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


call plug#end()
