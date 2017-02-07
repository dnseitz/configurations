set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'rust-lang/rust.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'sheerun/vim-polyglot'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'ap/vim-buftabline'
Plugin 'ctrlpvim/ctrlp.vim'

" " All of your Plugins must be added before the following line
call vundle#end()

filetype plugin on

syntax on

" Misc: Miscelaneous stuff to put in sections later
set number
set relativenumber
set ruler
set backspace=indent,eol,start

" Spacing: tabs act as two spaces
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set ai

" Searching: higlight matches
set hlsearch
set smartcase
set ignorecase

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Rust
au Filetype rust let &l:tabstop = 4
au Filetype rust let &l:shiftwidth = 4
au Filetype rust let &l:softtabstop = 4

set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-B> :bprev<CR>
