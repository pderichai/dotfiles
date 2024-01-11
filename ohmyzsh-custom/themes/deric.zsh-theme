NEWLINE=$'\n'
PROMPT='%F{8}%n%F{15}:%F{12}%~ %(?..%F{9}[%?] )%F{6}$(git_prompt_info)${NEWLINE}%F{13}>%f '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}%1{✗%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
