#!/usr/bin/env bash
#coding=utf8
#using brew installed vim's path
VIM_PATH=$(shell which vim)
#VIM_PATH=/usr/share/vim/vim73 #default path for linux

release:
	cp .vimrc ~/.vimrc
	#install colors
	mkdir -p ~/.vim/colors
	cp -r colors/ ~/.vim/colors
	#install bundle 
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

you_complete_me:
	vim +BundleInstall +qall
	brew install cmake
	cd ~/.vim/bundle/YouCompleteMe/
	./install.py

update_vim:
	#cd /usr/local/bin/
	#sudo mv vim vim73
	wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
	tar -xvf vim-7.4.tar.bz2
	cd vim74
	./configure --with-features=huge --enable-pythoninterp
	make
	sudo make install
	vim -version

install_port:
	curl -O https://distfiles.macports.org/MacPorts/MacPorts-2.3.3.tar.bz2
	tar xf MacPorts-2.3.3.tar.bz2
	cd MacPorts-2.3.3/ & ./configure & make & make install




