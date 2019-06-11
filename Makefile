pwd := $(shell pwd -LP)

.PHONY: shared vim spacemacs

macos: shared spacemacs
	@ln -nfs "${pwd}/bashrc.macos" ~/.bashrc

ubuntu: shared
	@ln -nfs "${pwd}/bashrc.ubuntu" ~/.bashrc

vim:
	cd vim && make link

spacemacs:
	@ln -nfs "${pwd}/emacs.d" ~/.emacs.d
	@ln -nfs "${pwd}/spacemacs" ~/.spacemacs

shared: vim
	@ln -nfs "${pwd}/tmux.conf" ~/.tmux.conf
	@ln -nfs "${pwd}/tmux.conf.local" ~/.tmux.conf.local
	@ln -nfs "${pwd}/gitconfig" ~/.gitconfig
	@ln -nfs "${pwd}/git_template" ~/.git_template
	@ln -nfs "${pwd}/condarc" ~/.condarc
