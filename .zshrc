# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/tls/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel9k/powerlevel9k"


POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(kubecontext root_indicator)

POWERLEVEL9K_HOME_ICON='\uf015'

POWERLEVEL9K_KUBECONTEXT_SHOW_DEFAULT_NAMESPACE=false

POWERLEVEL9K_BATTERY_VERBOSE=false
#POWERLEVEL9K_BATTERY_LEVEL_BACKGROUND=(red3 darkorange3 darkgoldenrod gold3 yellow3 chartreuse2 mediumspringgreen green3 green3 green4 darkgreen)
POWERLEVEL9K_BATTERY_ICON='\uf1e6 '
POWERLEVEL9K_BATTERY_CHARGING='yellow'
POWERLEVEL9K_BATTERY_CHARGED='green'
POWERLEVEL9K_BATTERY_DISCONNECTED='$DEFAULT_COLOR'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='20'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{014}\u2570%F{cyan}\uF460%f "

POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"




# Uncomment the following line if pasting URLs and other text is messed up.
 DISABLE_MAGIC_FUNCTIONS=true


plugins=(brew zsh-autosuggestions git kubectl docker docker-compose fzf forklift zsh-syntax-highlighting terraform)

source $ZSH/oh-my-zsh.sh

# --- CUSTOM ---
zstyle ':completion:*' known-hosts-files /dev/null


alias q='exit'
alias kctx='kubectx'
alias kns='kubens'
alias tf='terraform'
alias dfb='defaultbrowser'
alias kca='kubectl get-all'
alias wk='watch kubectl'
alias savenotes='cd ~/dev/gitlab/notable && git stash && git pull && git stash pop && git add --all && git commit -sm "$(date +%Y-%m-%d)" && gp && cd -'
alias hugoserve='docker run -it --rm -p 1313:1313 -v $(pwd):/hugo solidnerd/hugo server --bind 0.0.0.0'
alias hugobuild='docker run -it --rm -v $(pwd):/hugo solidnerd/hugo'
alias lzd='lazydocker'
alias bubu='brew update && brew upgrade && brew cleanup && brew outdated && brew upgrade --cask --greedy'
alias tfaa='terraform apply -auto-approve'
alias dotfiles='/usr/local/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

[ -f ~/.brew.github-api-token ] && source ~/.brew-github-api-token
export GOPATH=$HOME/go

# KREW
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# Kubeconfigs
KUBECONFIG=~/.kube/config
set -o shwordsplit
CONTENT=$(ls -p ~/.kube/ | grep -v / | grep -v kubectx)
for CONF in $CONTENT; do export KUBECONFIG="${KUBECONFIG}:${HOME}/.kube/${CONF}"; done

HISTFILESIZE=400000000
HISTSIZE=100000

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.iterm2_statusbar.zsh ] && source ~/.iterm2_statusbar.zsh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/mc mc

export EDITOR=/usr/bin/nano

complete -o nospace -C /usr/local/bin/terraform terraform

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="$HOME/dev/github/git-fuzzy/bin:$PATH"
