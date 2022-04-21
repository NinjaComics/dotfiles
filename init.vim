" init.vim
" Author - Ravi Sharan

set nocompatible
set encoding=utf-8

""""""""""""""""""""
" VIM Plug - Plugins
""""""""""""""""""""
call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'altercation/vim-colors-solarized'
Plug 'benekastah/neomake'
Plug 'Shougo/deoplete.nvim'
Plug 'ervandew/supertab'
Plug 'Raimondi/delimitMate'
"Plug 'kyazdani42/nvim-tree.lua'
"Plug 'tmhedberg/SimpylFold'

call plug#end()

" Activate NerdTree with F3
map <F3> :NERDTreeToggle<CR>

" Make backspace behave in a sane manner
set backspace=indent,eol,start

"Switch syntax highligting on
filetype off
filetype plugin indent on

" Automatically reload init.vim
au BufWrite init.vim :so %

" Turn on line numbering. Turn it off with set nonu 
set nu

" Color Scheme
syntax enable
set t_Co=256
set background=dark
colorscheme solarized 

" Allow mouse in xterm or GUI
set mouse=a

" Escape is too far away without this mapping
inoremap jj <Esc>

" Strip all trailing whitespace characters in current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" set the leader key 
let mapleader = ","

"Show the cursor position
set ruler

" Insert newline without entering into insert mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

"Find while pattern is being entered
set incsearch

"Show title
set title

"Add a line above and below the current one without moving the cursor
nnoremap <leader>oo m`o<Esc>kO<Esc>``

"Highlight Trailing whitespaces
match Error /\s\+$/

"Omnicomplete 
filetype plugin on
set omnifunc=syntaxcomplete#Complete

"80 Character Color Indicator
if (v:version >=703)
    set colorcolumn=80
    hi ColorColumn ctermbg=grey ctermfg=blue guibg=#592929
endif

"Open help in new window
set helpheight=999
" when viewing the help documentation
" use a full-sized window (instead of 1/2 the size)

" Highlight all search matches
set hlsearch

" Discard highlighted searches
nnoremap <Space> :noh<cr>

" CLipboard 
set clipboard=unnamedplus

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
