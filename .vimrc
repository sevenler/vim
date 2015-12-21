
syntax enable "check file type and hightline syntax 

set background=light
colorscheme solarized

set nu  "show text line number
set autoindent  "audo insert indent
set statusline+=%f
set laststatus=2
set mouse=a
set splitright "split right window on vertical split

"set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:< "show all white spaces 
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
set backspace=2
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

"config netrw
let g:netrw_liststyle=3
let g:netrw_list_hide='\.o,\.obj,*\~,\.pyc,' "stuff to ignore when tab completing
let g:netrw_list_hide.='\.env,'
let g:netrw_list_hide.='\.env[0-9].,'
let g:netrw_list_hide.='\.env-pypy,'
let g:netrw_list_hide.='\.git,'
let g:netrw_list_hide.='\.gitkeep,'
let g:netrw_list_hide.='\.vagrant,'
let g:netrw_list_hide.='\.tmp,'
let g:netrw_list_hide.='\.coverage$,'
let g:netrw_list_hide.='\.DS_Store,'
let g:netrw_list_hide.='__pycache__,'
let g:netrw_list_hide.='\.webassets-cache/,'
let g:netrw_list_hide.='\.sass-cache/,'
let g:netrw_list_hide.='\.ropeproject/,'
let g:netrw_list_hide.='vendor/rails/,'
let g:netrw_list_hide.='vendor/cache/,'
let g:netrw_list_hide.='\.gem,'
let g:netrw_list_hide.='\.ropeproject/,'
let g:netrw_list_hide.='\.coverage/,'
let g:netrw_list_hide.='log/,'
let g:netrw_list_hide.='tmp/,'
let g:netrw_list_hide.='\.tox/,'
let g:netrw_list_hide.='\.idea/,'
let g:netrw_list_hide.='\.egg,\.egg-info,'
let g:netrw_list_hide.='\.png,\.jpg,\.gif,'
let g:netrw_list_hide.='\.so,\.swp,\.zip,/\.Trash/,\.pdf,\.dmg,/Library/,/\.rbenv/,'
let g:netrw_list_hide.='*/\.nx/**,*\.app'
