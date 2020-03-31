source /usr/share/zsh/scripts/zplug/init.zsh

export SPACESHIP_DIR_PREFIX=""
export SPACESHIP_VI_MODE_SHOW=false
export EDITOR=vim
export N_PREFIX=$HOME/.n
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

zplug 'plugins/git', from:oh-my-zsh
zplug 'plugins/github', from:oh-my-zsh
zplug 'lib/directories', from:oh-my-zsh
zplug 'lib/theme-and-appearance', from:oh-my-zsh
zplug 'lib/completion', from:oh-my-zsh
zplug 'lib/termsupport', from:oh-my-zsh
zplug 'zsh-users/zsh-completions'
zplug 'zsh-users/zsh-history-substring-search'
zplug 'rupa/z', use:z.sh
zplug 'mafredri/zsh-async'

zplug 'zsh-users/zsh-syntax-highlighting', defer:2
zplug 'denysdovhan/spaceship-prompt', as:theme

if ! zplug check --verbose; then
    printf "Install [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
