set nocompatible " Be iMproved
filetype off

" Manage Vundle and its plugins
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
Plugin 'vimclojure'
Plugin 'vim-coffee-script'
Plugin 'vitapluvia/vim-gurl'

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
set relativenumber

" Undo and swap
set directory=/tmp/
if exists("&undodir")
	set undofile
	let &undodir=&directory
	set undolevels=100
	set undoreload=100
endif

" Search
set incsearch     " show search matches as you type
set showmatch
set hlsearch
set smartcase	  " ignore case if search pattern is all lowercase, case-sensitive otherwise
set ignorecase
set hlsearch

" cancel search highlight with space
nnoremap <Space> :let @/=""<CR>

" Find tasks and todos in files
command Todo noautocmd vimgrep /TODO\|FIXME/j ** | cw

" Keybinding to remind me that I suck at VIM
map <up> :startinsert<cr>I suck at Vim.
map <down> :startinsert<cr>I suck at Vim.
map <left> :startinsert<cr>I suck at Vim.
map <right> :startinsert<cr>I suck at Vim.
imap <up> I suck at Vim.
imap <down> I suck at Vim.
imap <left> I suck at Vim.
imap <right> I suck at Vim.

" vim-go settings
let g:go_fmt_command = "goimports"

" airline
let g:airline#extensions#tabline#enabled = 1

" Ruby
autocmd FileType ruby setlocal shiftwidth=2 sts=2 expandtab smartindent

" YAML
autocmd FileType yaml setlocal shiftwidth=2 sts=2 expandtab smartindent

" JSON
autocmd BufNewFile,BufRead *.json set shiftwidth=2 sts=2 expandtab smartindent ft=javascript

" Java
autocmd FileType java setlocal shiftwidth=4 sts=4 expandtab smartindent

" Python
autocmd FileType python setlocal shiftwidth=4 sts=4 expandtab smartindent

" HTML
autocmd FileType html setlocal shiftwidth=2 sts=2 expandtab smartindent
