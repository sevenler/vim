#!/usr/bin/env bash
#coding=utf8

VIMPATH=~/.vim
VIMRC=~/.vimrc

VIM_BUNDLE=$(VIMPATH)/bundle
PATHOGEN=mkdir -p $(VIMPATH)/autoload $(VIM_BUNDLE) && curl -LSso $(VIMPATH)/autoload/pathogen.vim https://tpo.pe/pathogen.vim

plugs:
	@rm -fr $(VIM_BUNDLE)
	$(PATHOGEN)
	git clone https://github.com/scrooloose/nerdtree.git $(VIM_BUNDLE)/nerdtree

install:
	@cp .vimrc $(VIMRC) 
	@make plugs
