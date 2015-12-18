#!/usr/bin/env bash
#coding=utf8
VIM_PATH = /usr/share/vim/vim73
release:
	mkdir -p ~/.vim/color
	cp -r colors/ $(VIM_PATH)/colors
	cp .vimrc ~/
