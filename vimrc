" vim's shell
set shell=fish

" Incompatible for vi
set nocompatible

" Filetype detection, plugin and indent file loading: ON
filetype plugin indent on

" Syntax highlighting: ENABLED
syntax enable 

" Standard encoding: UTF-8
set encoding=utf-8

" Standard file format: UNIX
set fileformats=unix,dos,mac

" Number of lines to remember: 700
set history=700

" Auto-read when a file is changed from the outside
set autoread

" Map leader to comma
let mapleader = ","

" Fast saving, quitting and saving & quitting
nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>
nmap <leader>x :x<cr>

" Minimum number of screen lines above and below the cursor
set scrolloff=7

" Use wild menu for enhanced command-line completion
set wildmenu

" Ignore compiled files in completions
set wildignore=*.o,*.so,*.a

" Show line and column number of the cursor
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hidden

" Configure backspace so it acts as it should act
set backspace=indent,eol,start

" Ignore case when searching
set ignorecase

" Be smart when ignoring the case, though
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch 

" How many tenths of a second to blink when matching brackets
set matchtime=2

" No annoying sound/flash on errors
set noerrorbells
set novisualbell

" Timeout length for key codes and mapped keys
set timeoutlen=500

" Turn file backups off
set nobackup
set nowritebackup
set noswapfile

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" <TAB> equals 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 80 characters
set linebreak
set textwidth=80

set autoindent
set smartindent
set wrap

" Disable arrow keys
noremap <left> <Nop>
noremap <down> <Nop>
noremap <right> <Nop>
noremap <up> <Nop>

inoremap <left> <Nop>
inoremap <down> <Nop>
inoremap <right> <Nop>
inoremap <up> <Nop>

" Show (relative) line numbers
set number
set relativenumber

" vim-airline settings
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" solarized color scheme
set background=dark
colorscheme solarized

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
