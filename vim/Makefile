# Makefile
pwd := $(shell pwd -LP)

link:
	@if [ ! -d ~/.config  ]; then mkdir ~/.config; fi && then ln -nfs "${pwd}" ~/.config/nvim
	@ln -nfs "${pwd}/init.vim" ~/.vimrc
	@ln -nfs "${pwd}" ~/.vim
