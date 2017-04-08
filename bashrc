# Homebrew API Token
export HOMEBREW_GITHUB_API_TOKEN="e821346d97162a5697a0ea981fd6712d84ce262e"

# aliases
alias emacs='(emacs &> /dev/null &)'
alias la='ls -al'
alias ll='ls -l'

# colors on term
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;36m\]\u\[\033[01;31m\]@\[\033[01;36m\]$(scutil --get ComputerName)\[\033[01;33m\]:\[\033[01;31m\]\w\[\033[01;33m\]\$\[\033[00m\] '

# rustup
export PATH=$HOME/.cargo/bin:$PATH

# pyenv
## shims + autocomplete
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
## pyenv-virtualenv init
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# nvm
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

# jenv
## shims + autocomplete
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

# personal bins
export PATH=$HOME/bin:$PATH

