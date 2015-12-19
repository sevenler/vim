
syntax enable "check file type and hightline syntax 

set background=light
colorscheme solarized

set nu  "show text line number
set autoindent  "audo insert indent
set statusline+=%f
set laststatus=2
set mouse=a
set splitright "split right window on vertical split

let g:netrw_preview = 1

"change wrap using key  h or l
set whichwrap=b,s,h,l,<,>,[,]
set encoding=utf8
set smarttab 
set shiftwidth=4
set tabstop=4    
set hlsearch  "hight line show the search result 

set runtimepath=~/.vim,$VIMRUNTIME

set nocompatible
filetype off

"config bundle plugin
"open vim , and run :BundleInstall
"or vim +BundleInstall +qall
set rtp+=~/.vim/bundle/Vundle.vim
set wildignore-=doc
call vundle#begin()
Plugin 'BundleVim/Vundle.vim'
Bundle 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on
