autoload -U +X compinit && compinit

# Brew
[ -f ~/.brew-github-api-token ] && source ~/.brew-github-api-token

# Noob Editor
export EDITOR=/usr/bin/nano

# Krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# Kubeconfigs
KUBECONFIG=~/.kube/config
set -o shwordsplit
CONTENT=$(ls -p ~/.kube/ | grep -v / | grep -v kubectx)
for CONF in $CONTENT; do export KUBECONFIG="${KUBECONFIG}:${HOME}/.kube/${CONF}"; done

# Shell History
export HISTSIZE=1000000000
export SAVEHIST=1000000000

#Fuzzy search fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# 1password
export OP_ACCOUNT=SMMDLMBWQ5HHTETIQK5BFZYNUE
eval "$(op completion zsh)"; compdef _op op

# aliases
alias ..='cd ..~'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias 1='cd -1'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'
alias aws-otp='op item get --field type=otp AWS --format json | jq -r .totp |  tr -d n | pbcopy'
alias awscn-otp='op item get --field type=otp AWS\ CN --format json | jq -r .totp |  tr -d n | pbcopy'
alias bubu='brew update && brew outdated --greedy-auto-updates && brew upgrade --greedy-auto-updates && brew cleanup'
alias dco='docker compose'
alias diff='diff --color'
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias egrep='grep -E --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
alias fgrep='grep -F --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
alias g=git
alias ga='git add'
alias gaa='git add --all'
alias gam='git am'
alias gama='git am --abort'
alias gamc='git am --continue'
alias gams='git am --skip'
alias gamscp='git am --show-current-patch'
alias gap='git apply'
alias gb='git branch'
alias gc='git commit --verbose'
alias gcb='git checkout -b'
alias gcl='git clone --recurse-submodules'
alias gcm='git checkout $(git_main_branch)'
alias gco='git checkout'
alias gd='git diff'
alias gf='git fetch'
alias gl='git pull'
alias gp='git push'
alias gpsup='git push --set-upstream origin $(git_current_branch)'
alias gr='git remote'
alias grb='git rebase'
alias grep='grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
alias gst='git status'
alias k=kubectl
alias kctx=kubectx
alias kns=kubens
alias wk='watch kubectl'
alias l='ls -lah'
alias la='ls -lAh'
alias ll='ls -lh'
alias ls='ls -G'
alias lsa='ls -lah'
alias md='mkdir -p'
alias q=exit
alias tf=terraform
alias tfa='terraform apply'
alias tfaa='terraform apply -auto-approve'
alias tfd='terraform destroy'
alias tff='terraform fmt'
alias tfi='terraform init'
alias tfp='terraform plan'
alias tfv='terraform validate'

# starship
eval "$(starship init zsh)"
