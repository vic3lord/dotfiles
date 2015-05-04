set nocompatible " Be iMproved
filetype off


" Vundle
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'fatih/vim-go'
Plugin 'rust-lang/rust.vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'markcornick/vim-terraform'
Plugin 'bling/vim-airline'
Plugin 'gnupg.vim'

call vundle#end()
filetype plugin indent on


" Silent errors if colorscheme not exist
silent! colorscheme solarized


" Global
syntax on
set background=dark
set timeoutlen=1000
set ttimeoutlen=0
set encoding=utf-8
set fileencoding=utf-8
set showmatch
set number
set numberwidth=1
set modeline
set modelines=5
set laststatus=2


" Undo and swap
set directory=/tmp/
if exists("&undodir")
	set undofile
	let &undodir=&directory
	set undolevels=200
	set undoreload=200
endif


" Search
set incsearch     " show search matches as you type
set showmatch
set hlsearch
set smartcase	  " ignore case if search pattern is all lowercase, case-sensitive otherwise
set ignorecase
set hlsearch
nnoremap <Space> :let @/=""<CR> " cancel search hlight with space


autocmd FileType ruby setlocal shiftwidth=2 sts=2 expandtab smartindent
autocmd FileType yaml setlocal shiftwidth=2 sts=2 expandtab smartindent
autocmd FileType java setlocal shiftwidth=4 sts=4 expandtab smartindent
autocmd FileType python setlocal shiftwidth=4 sts=4 expandtab smartindent
autocmd BufNewFile,BufRead *.json set shiftwidth=2 sts=2 expandtab smartindent ft=javascript
autocmd FileType html setlocal shiftwidth=2 sts=2 expandtab smartindent

" Golang
imap ;http func Handler(w http.ResponseWrite, r *http.Request) {}<left><return><return><up>

" vim-go settings
let g:go_fmt_command = "goimports"

" airline
let g:airline#extensions#tabline#enabled = 1
