" vimrc 

" Author: Ravi Sharan B A G
" Last Change: 09 Jan 2014

" Use Vim settings, rather than Vi setings.
" If you don't understand a setting in here, just type ':h setting'.


""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Bundle(Vundle) for better plugin management. 
""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" The bundles you install will be listed here

filetype plugin indent on


"""""""""""""""""""""""""""
" Other vim configurations. 
"""""""""""""""""""""""""""

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

" Make backspace work normally 
set bs=indent,eol,start

" Allow mouse in xterm or GUI
set mouse=a

" Escape is too far away without this mapping
inoremap jj <Esc>

" Automatically indent C code
set cindent

" Strip all trailing whitespace characters in current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" set the leader key 
let mapleader = ","

" Don't be strictly old vi-like
set nocompatible

"Show the cursor position
set ruler

" Make Y behave similar to C and D (from cursor to end of line)
nnoremap Y y$

" Map <leader>y, x and p as shortcuts for copy, cut and paste (respectively)
" to/from system (X) clipboard when supported (Eg: gvim).
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>x "+x
vnoremap <leader>x "+x
nnoremap <leader>p "+p
vnoremap <leader>p "+p

" Insert newline without entering into insert mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

"Find while pattern is being entered
set incsearch

"Show title
set title

" make hjkl movements accessible from insert mode via the <Alt> modifier key
inoremap <A-h> <C-o>h
inoremap <A-j> <C-o>j
inoremap <A-k> <C-o>k
inoremap <A-l> <C-o>:qjl

"Add a line above and below the current one without moving the cursor
nnoremap <leader>oo m`o<Esc>kO<Esc>``

"Highlight Trailing whitespaces
match Error /\s\+$/

" Auto Close Parentheses, Brackets and Braces
"imap { {}<left>
"imap ( ()<left>
"imap [ []<left>

"LaTex Compile and Show 
"Compiles LaTeX File in background
nmap <leader>cl :! runlatex % > logfile 2>&1 &<CR><CR>
"Open up pdf associated with current LaTeX file
nmap <leader>ol :! okular %:r.pdf > /dev/null 2>&1 &<CR><CR>


