" Minimal vimrc 

" Author: Ravi Sharan B A G
" Last Change: 20 Nov 2013

" Use Vim settings, rather than Vi setings.
" If you don't understand a setting in here, just type ':h setting'.

" Make backspace behave in a sane manner
set backspace=indent,eol,start

"Switch syntax highligting on
filetype off
filetype plugin indent on
syntax on

"Enable file type detection and do language-dependent indenting
filetype plugin indent on

" Turn on line numbering. Turn it off with "set nonu" 
set nu

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

" Color Scheme
colorscheme slate

" Easier moving of code blocks
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

" vim-pathogen
execute pathogen#infect()

" Make backspace work normally 
set bs=2 
