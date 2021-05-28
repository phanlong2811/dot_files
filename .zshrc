# Path to your oh-my-zsh installation.
export ZSH="/home/phanlong2811/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
    git
    z
    zsh-autosuggestions
    zsh-completions
    tmux
    fast-syntax-highlighting
)
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# User configuration
# zsh-autosuggestions

ZSH_AUTOSUGGEST_STRATEGY=(history completion)

bindkey "\t" end-of-line

export EDITOR=nvim
export FZF_DEFAULT_OPTS='
  --color fg+:2,bg+:-1,hl+:2
  --color info:5,prompt:2,spinner:3,pointer:1,marker:2'

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls="logo-ls"

export TERM=xterm-256color
