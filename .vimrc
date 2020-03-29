set nocompatible              " required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

syntax on
set relativenumber
set tabstop=8
set softtabstop=3
set shiftwidth=3
set expandtab 
set autoindent
set laststatus=2
set noshowmode

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'ctrlpvim/ctrlp.vim'
" Lightline visual bar
Plugin 'itchyny/lightline.vim'
" All of your Plugins must be added before the following line
Plugin 'preservim/nerdtree'

call vundle#end()            
filetype plugin indent on    
" Enable folding
set foldmethod=indent
set foldlevel=99
" PEP-8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
set encoding=utf-8
map <C-o> :NERDTreeToggle<CR>
