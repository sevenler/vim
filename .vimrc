set nocompatible         
filetype off            

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'

call vundle#end()          
filetype plugin indent on 


syntax on

set encoding=utf-8

"for pathogen
execute pathogen#infect()

"show existing tab with 4 spaces width
set tabstop=4
"when indenting with '>', use 4 spaces width
set shiftwidth=4
"On pressing tab, insert 4 spaces
set expandtab

set nu

let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_autoclose_preview_window_after_insertion=1
