pwd := $(shell pwd -LP)

.PHONY: macos ubuntu vim nvim git shared

figmamacos: shared
	@ln -nfs "${pwd}/alacritty" ~/.config/alacritty
	@ln -nfs "${pwd}/zshrc.macos" ~/.zshrc
	@ln -nfs "${pwd}/bashrc.macos" ~/.bashrc
	cd figma-dotfiles && make macos

figmalinux: shared
	@ln -nfs "${pwd}/bashrc.ubuntu" ~/.bashrc
	@ln -nfs "${pwd}/zshrc.ubuntu" ~/.zshrc
	cd figma-dotfiles && make linux

googlemacos:
	cd google-dotfiles && make macos

googlelinux:
	cd google-dotfiles && make linux

macos: shared git
	@ln -nfs "${pwd}/alacritty" ~/.config/alacritty
	@ln -nfs "${pwd}/zshrc.macos" ~/.zshrc
	@ln -nfs "${pwd}/bashrc.macos" ~/.bashrc

ubuntu: shared git
	@ln -nfs "${pwd}/zshrc.ubuntu" ~/.zshrc
	@ln -nfs "${pwd}/bashrc.ubuntu" ~/.bashrc

vim:
	cd vim && make link

nvim:
	cd nvim && make link

vscode:
	@ln -nfs "${pwd}/vscode/settings.json" ~/Library/Application\ Support/Code/User/settings.json
	@ln -nfs "${pwd}/vscode/keybindings.json" ~/Library/Application\ Support/Code/User/keybindings.json

git:
	@ln -nfs "${pwd}/gitconfig" ~/.gitconfig

shared: vim nvim vscode
	@ln -nfs "${pwd}/bin" ~/bin
	@ln -nfs "${pwd}/tmux.conf" ~/.tmux.conf
	@if [ ! -d ~/.config/ranger ]; then mkdir -p ~/.config/ranger; fi && ln -nfs "${pwd}/rc.config" ~/.config/ranger/rc.conf
