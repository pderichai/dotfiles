pwd := $(shell pwd -LP)

.PHONY: macos ubuntu vim shared

figmamacos: shared
	cd figma-dotfiles && make macos

googlemacos:
	cd google-dotfiles && make macos

googlelinux:
	cd google-dotfiles && make linux

macos: shared
	@ln -nfs "${pwd}/zshrc.macos" ~/.zshrc
	@ln -nfs "${pwd}/bashrc.macos" ~/.bashrc
	# Removed ssh config for now.
	# @ln -nfs "${pwd}/ssh/config" ~/.ssh/config
	@if [ ! -d ~/.config/fish ]; then mkdir -p ~/.config/fish; fi && ln -nfs "${pwd}/config.fish.macos" ~/.config/fish/config.fish

ubuntu: shared
	@ln -nfs "${pwd}/bashrc.ubuntu" ~/.bashrc
	@if [ ! -d ~/.config/fish ]; then mkdir -p ~/.config/fish; fi && ln -nfs "${pwd}/config.fish.ubuntu" ~/.config/fish/config.fish

vim:
	cd vim && make link

shared: vim
	@ln -nfs "${pwd}/bin" ~/bin
	@ln -nfs "${pwd}/tmux.conf" ~/.tmux.conf
	@ln -nfs "${pwd}/gitconfig" ~/.gitconfig
	@ln -nfs "${pwd}/gitconfig-personal" ~/.gitconfig-personal
	@ln -nfs "${pwd}/git_template" ~/.git_template
	@if [ ! -d ~/.config/ranger ]; then mkdir -p ~/.config/ranger; fi && ln -nfs "${pwd}/rc.config" ~/.config/ranger/rc.conf
