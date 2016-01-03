
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
Bundle 'scrooloose/nerdtree'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax'
Plugin 'szw/vim-tags'
call vundle#end()
filetype plugin indent on

" NERDTree config
map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
autocmd vimenter * NERDTree
let NERDChristmasTree=0
let NERDTreeWinSize=40
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"

"config javascript libraries syntax
autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 1
autocmd BufReadPre *.js let b:javascript_lib_use_prelude = 0
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 0

"config command dd without copy
nnoremap d "_d
vnoremap d "_d
vnoremap p "_dP

