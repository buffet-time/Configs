ZSH_THEME="danielTurcich"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

autoload -Uz vcs_info
autoload -U colors && colors

precmd() {vcs_info}

zstyle ':vcs_info:git:*' formats '(%b)'

setopt PROMPT_SUBST

PROMPT='%{$fg[yellow]%}${PWD/#$HOME/~} %{$fg[cyan]%}${vcs_info_msg_0_} %{$fg[white]%}%
$ '