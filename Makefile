#!/usr/bin/env bash
#coding=utf8

VIMPATH=~/.vim
VIMRC=~/.vimrc


VIM_BUNDLE=$(VIMPATH)/bundle
PATHOGEN=mkdir -p $(VIMPATH)/autoload $(VIM_BUNDLE) && curl -LSso $(VIMPATH)/autoload/pathogen.vim https://tpo.pe/pathogen.vim

plugs:
	@rm -fr $(VIM_BUNDLE)
	$(PATHOGEN)
	git clone https://github.com/VundleVim/Vundle.vim.git $(VIM_BUNDLE)/Vundle.vim
	git clone https://github.com/scrooloose/nerdtree.git $(VIM_BUNDLE)/nerdtree

install:
	@cp .vimrc $(VIMRC) 
	@make plugs
	vim +PluginInstall +qall

completeme-ubuntu:
	#see more install information
	#https://github.com/Valloric/YouCompleteMe#ubuntu-linux-x64
	sudo apt-get install -y build-essential cmake
	sudo apt-get install -y python-dev python3-dev
	rm -r $(VIM_BUNDLE)/YouCompleteMe
	git clone https://github.com/Valloric/YouCompleteMe.git $(VIM_BUNDLE)/YouCompleteMe
	cd $(VIM_BUNDLE)/YouCompleteMe \
		&& sudo git submodule update --init --recursive \
		&& sudo ./install.py
