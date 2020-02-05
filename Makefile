pwd := $(shell pwd -LP)

.PHONY: macos ubuntu vim shared

googlemacos:
	cd google-dotfiles && make macos

googlelinux:
	cd google-dotfiles && make linux

macos: shared
	@ln -nfs "${pwd}/bashrc.macos" ~/.bashrc

ubuntu: shared
	@ln -nfs "${pwd}/bashrc.ubuntu" ~/.bashrc

vim:
	cd vim && make link

shared: vim
	@ln -nfs "${pwd}/bin" ~/bin
	@if [ ! . -ef ~/.config/fish  ]; then mkdir -p ~/.config/fish; fi && ln -nfs "${pwd}/config.fish" ~/.config/fish/config.fish
	@ln -nfs "${pwd}/tmux.conf" ~/.tmux.conf
	@ln -nfs "${pwd}/tmux.conf.local" ~/.tmux.conf.local
	@ln -nfs "${pwd}/gitconfig" ~/.gitconfig
	@ln -nfs "${pwd}/git_template" ~/.git_template
