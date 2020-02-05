# Makefile
pwd := $(shell pwd -LP)

link:
	@if [ ! -d ~/.config  ]; then mkdir ~/.config; fi && if [ ! -f ~/.config/nvim  ]; then ln -nfs "${pwd}" ~/.config/nvim; fi
	@ln -nfs "${pwd}/init.vim" ~/.vimrc
	@if [ ! -d ~/.vim ]; then ln -nfs "${pwd}" ~/.vim; fi
