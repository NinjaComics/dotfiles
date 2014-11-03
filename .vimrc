" vimrc 

" Author: Ravi Sharan B A G
" Last Change: 11 June 2014

" Use Vim settings, rather than Vi setings.
" If you don't understand a setting in here, just type ':h setting'.


""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Bundle(Vundle) for better plugin management. 
""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'


""""""""""""""""""
" Vundle - Bundles
""""""""""""""""""

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'flazz/vim-colorschemes'
Plugin 'cocopon/iceberg.vim'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/c.vim'
Plugin 'majutsushi/tagbar'

call vundle#end()
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
colorscheme 256-grayvim 

" Easier moving of code blocks
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

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

" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

" Activate NerdTree with F2
map <F3> :NERDTreeToggle

" Solarized Colorscheme
"syntax enable
"set background=light
"colorscheme solarized

"Omnicomplete 
filetype plugin on
set omnifunc=syntaxcomplete#Complete

"80 Character Color Indicator
if (v:version >=703)
    set colorcolumn=80
    hi ColorColumn ctermbg=grey ctermfg=white guibg=#592929
endif

"Open help in new window
set helpheight=999
" when viewing the help documentation
" use a full-sized window (instead of 1/2 the size)

"Highlight all search matches
set hlsearch

"Copy to clipboard
if has("clipboard")
    vnoremap y "*y
    nnoremap yy "*yy
    vnoremap d "*d
    nnoremap dd "*dd
    vnoremap x "*x
    nnoremap x "*x
    vnoremap p "*p
    nnoremap p "*p
endif

"Tagbar settings
nmap <F8> :TagbarToggle<CR>
