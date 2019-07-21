" Disable compatibility with vi
set nocompatible

" Enable filetype detection, plugin and indent file loading
filetype plugin indent on

" Enable syntax highlighting
syntax enable

" Set vim's shell
set shell=fish

" Set standard encoding
set encoding=utf-8

" Set standard file format
set fileformats=unix,dos,mac

" Search all the subdirectories inside the current directory
set path+=**

" Set number of lines to remember
set history=700

" Enable automatic reading of a file when changed from the outside
set autoread

" Set minimum number of screen lines above and below the cursor
set scrolloff=7

" Enable enhanced command-line completion
set wildmenu

" Ignore compiled files in completions
set wildignore=*.o,*.so,*.a

" Enable ruler to show line and column number of the cursor
set ruler

" Set height of the command bar
set cmdheight=2

" Hide abandoned buffers
set hidden

" Configure backspace so that it acts as intended
set backspace=indent,eol,start

" Smartly ignore case when searching
set ignorecase smartcase

" Highlight search results
set hlsearch

" Enable incremental search, i.e., "search as you type"
set incsearch

" Disable redrawing of the screen while executing macros
set lazyredraw

" Change special characters in search patterns
set magic

" Show matching brackets when text indicator is over them
set showmatch

" Set interval of showing the matching paren (tenths of a second)
set matchtime=2

" Disable annoying sound/flash on errors
set noerrorbells novisualbell

" Set timeout length for key codes and mapped keys
set timeoutlen=500

" Disable file backups
set nobackup nowritebackup noswapfile

" Use spaces instead of tabs
set expandtab smarttab
set shiftwidth=2
set tabstop=2

" Set linebreak to visually wrap long lines
set linebreak wrap

" Set textwidth to break long lines
set textwidth=80

" Enable smart autoindent
set autoindent smartindent

" Map leader
let mapleader = ','

" Fast saving, quitting and saving & quitting
nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>
nmap <leader>x :x<cr>

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
set number relativenumber

" Show all white space characters
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:< " ,space:␣
set list

" Set column to color
set colorcolumn=80

" GUI options
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

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
if has( "gui_running" )
  set background=light
else
  set background=dark
endif
colorscheme solarized

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" vimtex settings
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'

" enable matchit plugin (needed for julia-vim's jumping support)
packadd! matchit

" julia-vim settings
let g:default_julia_version = '1.0'
let g:julia_syntax_highlight_deprecated = 1
