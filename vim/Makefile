# Makefile
pwd := $(shell pwd -LP)

link:
	@if [ ! . -ef ~/.config  ]; then mkdir ~/.config; fi && if [ ! . -ef ~/.config/nvim  ]; then ln -nfs "${pwd}" ~/.config/nvim; fi
	@ln -nfs "${pwd}/init.vim" ~/.vimrc
	@if [ ! . -ef ~/.vim ]; then ln -nfs "${pwd}" ~/.vim; fi
