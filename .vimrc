set nocompatible

filetype indent plugin on

syntax on
set background=dark
colorscheme solarized

set hidden

set wildmenu
set showcmd
set hlsearch

set ignorecase
set smartcase

set autoindent

set nostartofline

set ruler

set laststatus=2

set confirm

set visualbell
set t_vb=

set mouse=a

set cmdheight=2

set number

set notimeout ttimeout ttimeoutlen=200

set pastetoggle=<F11>

set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

set colorcolumn=80

execute pathogen#infect()
let g:neocomplete#enable_at_startup = 1
nmap <F8> :TagbarToggle<CR>


