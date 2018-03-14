# Homebrew API Token
export HOMEBREW_GITHUB_API_TOKEN="e821346d97162a5697a0ea981fd6712d84ce262e"

# rustup
#export PATH=$HOME/.cargo/bin:$PATH

# nvm
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

# jenv
## shims + autocomplete
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

# personal bins
export PATH="$HOME"/bin:/usr/local/anaconda3/bin:"$PATH"

