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

"set visualbell
set t_vb=
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set guifont=Roboto\ Mono\ Light\ for\ Powerline\ 12

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

" Rewrapping
map <F8> gq}
map <F9> vipJ

call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'fatih/vim-go'
Plug 'plasticboy/vim-markdown'
Plug 'rhysd/vim-clang-format'
Plug 'klen/python-mode'
Plug 'petrushka/vim-opencl'
Plug 'reedes/vim-pencil'
Plug 'valloric/youcompleteme'
Plug 'tomasr/molokai'
Plug 'rust-lang/rust.vim'
call plug#end()

" Airline setup
" let g:airline_powerline_fonts = 0
" if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
" endif
" let g:airline_symbols.space = "\ua0"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline_theme = 'molokai'

" NerdTree
map <C-n> :NERDTreeToggle<CR>

" Colorscheme
colorscheme molokai
let g:rehash256 = 1
"set background=dark
"colorscheme solarized
"let g:solarized_termcolors=256
highlight ColorColumn ctermbg=160 guibg=#D80000

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Syntastic - javascript
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'

" Syntastic - cuda
let g:syntastic_cuda_checkers = []

" Syntastic - python
let g:syntastic_python_checkers = []

" Markdown
let g:vim_markdown_folding_disabled = 1

" Time
:nmap <F5> i<C-R>=strftime('%T')<CR><ESC>
:imap <F5> <C-R>=strftime('%T')<CR>

" Python
let g:pymode_folding = 0

" Go
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage-toggle)
let g:go_fmt_command = "goimports"
let g:godef_split = 0
let g:go_list_type = 'quickfix'

" Vim Pencil
"augroup pencil
  "autocmd!
  "autocmd FileType markdown,mkd call pencil#init()
  "autocmd FileType text         call pencil#init()
"augroup END
