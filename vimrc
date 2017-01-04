set nocompatible

filetype indent plugin on

syntax on
set background=dark
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

set t_Co=256

" set mouse=a

set cmdheight=2

set number

set notimeout ttimeout ttimeoutlen=200

set pastetoggle=<F11>

set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

set colorcolumn=80
set encoding=utf-8

nnoremap <C-h> :tabp<CR>
nnoremap <C-l> :tabn<CR>
nnoremap <C-u> <C-w>w

execute pathogen#infect()
execute pathogen#helptags()

let g:neocomplete#enable_at_startup = 1
nmap <F8> :TagbarToggle<CR>

" Airline setup
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#show_buffers = 1
let g:airline_theme = 'molokai'

" NERDTree Setup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>

" VIM clang-format
let g:clang_format#code_style = "google"
autocmd FileType h,c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType h,c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
autocmd FileType h,c ClangFormatAutoEnable

colorscheme molokai
