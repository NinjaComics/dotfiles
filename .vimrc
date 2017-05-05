" vimrc 
" Author: Ravi Sharan B A G 

" Use Vim settings, rather than Vi setings.
" If you don't understand a setting in here, just type ':h setting'.

""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Bundle(Vundle) for better plugin management. 
""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'VundleVim/Vundle.vim'


""""""""""""""""""
" Vundle - Bundles
""""""""""""""""""
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'cocopon/iceberg.vim'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/c.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'tomasr/molokai'

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

nnoremap <Space> :noh<cr>

"Enable file type detection and do language-dependent indenting
filetype plugin indent on

" Turn on line numbering. Turn it off with "set nonu" 
set nu

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

" Color Scheme
syntax enable
set t_Co=256
set background=dark
"let g:solarized_termcolors=256
colorscheme solarized

" Allow mouse in xterm or GUI
set mouse=a

" Escape is too far away without this mapping
inoremap jj <Esc>

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

" Activate NerdTree with F3
map <F3> :NERDTreeToggle

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

"Highlight all search matches
set hlsearch

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

"Syntastic settings
let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1
""mark syntax errors with :signs
let g:syntastic_enable_signs=1
""automatically jump to the error when saving the file
let g:syntastic_auto_jump=0
""show the error list automatically
let g:syntastic_auto_loc_list=1
""don't care about warnings
let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntastic_python_checkers=['python', 'flake8']

" Vim-airline config
set laststatus=2
let g:airline_detect_paste=1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'powerlineish'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline#extensions#virtualenv#enabled = 1

" copy or paste from X11 clipboard
" " http://vim.wikia.com/wiki/GNU/Linux_clipboard_copy/paste_with_xclip
vmap "+y :!xclip -f -sel clip
map "+p :r!xclip -o -sel clip

" Workaround for :Q to :q
command! Q :q
command! W :w

" Shortcut for norm
vnoremap <C-n> :norm

" vim-airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif
