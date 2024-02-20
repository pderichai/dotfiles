pwd := $(shell pwd -LP)

.PHONY: macos ubuntu vim nvim git shared

figmamacos: shared git
	@ln -nfs "${pwd}/alacritty" ~/.config/alacritty
	@ln -nfs "${pwd}/zshrc.macos" ~/.zshrc
	@ln -nfs "${pwd}/bashrc.macos" ~/.bashrc
	cd figma-dotfiles && make macos

figmalinux: shared
	cd figma-dotfiles && make linux

googlemacos:
	cd google-dotfiles && make macos

googlelinux:
	cd google-dotfiles && make linux

macos: shared
	# Removed ssh config for now.
	# @ln -nfs "${pwd}/ssh/config" ~/.ssh/config
	@ln -nfs "${pwd}/alacritty" ~/.config/alacritty
	@ln -nfs "${pwd}/zshrc.macos" ~/.zshrc
	@ln -nfs "${pwd}/bashrc.macos" ~/.bashrc

ubuntu: shared
	@ln -nfs "${pwd}/bashrc.ubuntu" ~/.bashrc

vim:
	cd vim && make link

nvim:
	cd nvim && make link

git:
	@ln -nfs "${pwd}/gitconfig" ~/.gitconfig
	@ln -nfs "${pwd}/gitconfig-personal" ~/.gitconfig-personal
	@ln -nfs "${pwd}/git_template" ~/.git_template


shared: vim nvim
	@ln -nfs "${pwd}/bin" ~/bin
	@ln -nfs "${pwd}/tmux.conf" ~/.tmux.conf
	@if [ ! -d ~/.config/ranger ]; then mkdir -p ~/.config/ranger; fi && ln -nfs "${pwd}/rc.config" ~/.config/ranger/rc.conf
