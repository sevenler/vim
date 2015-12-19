#!/usr/bin/env bash
#coding=utf8

release:
	cp .vimrc ~/.vimrc
	#install colors
	mkdir -p ~/.vim/colors
	cp -r colors/ ~/.vim/colors
	#install bundle 
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

