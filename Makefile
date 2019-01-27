pwd := $(shell pwd -LP)

.PHONY: vim tmux gitconfig

macos: vim tmux
	@ln -nfs "${pwd}/bashrc.macos" ~/.bashrc

ubuntu: vim tmux
	@ln -nfs "${pwd}/bashrc.ubuntu" ~/.bashrc

vim:
	pushd vim && \
	make link && \
	popd \

tmux:
	@ln -nfs "${pwd}/tmux.conf" ~/.tmux.conf
	@ln -nfs "${pwd}/tmux.conf.local" ~/.tmux.conf.local

gitconfig:
	@ln -nfs "${pwd}/gitconfig" ~/.gitconfig
