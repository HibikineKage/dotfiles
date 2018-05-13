source ~/.zplug/init.zsh

zplug "zplug/zplug", hook-build:"zplug --self-manage"
#zplug "sorin-ionescu/prezto"
zplug "mafredri/zsh-async"
zplug "sindresorhus/pure"
zplug "rupa/z"
zplug "mollifier/cd-gitroot"
zplug "b4b4r07/enhancd", use:init.sh
zplug "b4b4r07/zsh-gomi", if:"which fzf"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search", defer:2
zplug "zsh-users/zsh-completions"
zplug "chrissicool/zsh-256color"
zplug "junegunn/fzf-bin", as:command, from:gh-r, rename-to:fzf
zplug "peco/peco", as:command, from:gh-r, use:"*amd64*"
zplug "mrowa44/emojify", as:command
zplug "stedolan/jq", from:gh-r, as:command, on:b4b4r07/emoji-cli, if:"which jq"
zplug "walesmd/caniuse.plugin.zsh"
zplug "liangguohuan/zsh-dircolors-solarized"
#zstyle prompt theme 'pure'
#zplug "modules/history",    from:prezto 
#zplug "modules/utility",    from:prezto 
#zplug "modules/ruby",       from:prezto 
#zplug "modules/ssh",        from:prezto 
#zplug "modules/terminal",   from:prezto 
#zplug "modules/directory",  from:prezto
zplug load --verbose
#zstyle ':prezto:module:prompt' theme 'pure'

export PATH="$PATH:$HOME/.cargo/bin"

if [[ -s "$HOME/src/google-cloud-sdk" ]]; then
    source $HOME/src/google-cloud-sdk/completion.zsh.inc
    source $HOME/src/google-cloud-sdk/path.zsh.inc
fi

# pure config
PURE_PROMPT_SYMBOL=">"

# enhancd config
export ENHANCD_DISABLE_DOT=1
export ENHANCD_FILTER=fzy:fzf:peco

# Home
WHOAMI=$(whoami)

# Aliases
alias hyperlog="git log --oneline --graph --decorate=full"
alias cd..="cd .."
alias lasimg="cd /mnt/c/Users/Kage/src/lastyearimages/"
alias webcr="cd /mnt/c/Users/${WHOAMI}/src/webcraft/"
alias winHome="cd /mnt/c/Users/$USER/"
alias owcl="cd /mnt/e/ownCloud/"
alias ch="cd ~/src/cheetah_app/"
alias chdocker="cd ~/src/cheetah_app/cheetah_docker/ && docker-compose up -d"
alias chwatch="cd ~/src/cheetah_app/ && yarn watch"
alias getmyip="curl inet-ip.info"
alias cdnol="cd /mnt/c/Users/goods/src/nolose-backend"
export PATH=$PATH:$HOME/.cargo/bin
alias startdevserver="gcloud compute instances start dev-2"
alias stopdevserver="gcloud compute instaces stop dev-2"
alias grep='grep --color'
alias df='df -h'

# ls aliases
alias ll='ls -la --color=auto'
alias la='ls -la --color=auto'
alias sl='ls'

# git aliases
alias gaa='git add --all'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gs='git status'
alias gst='git status'
alias gb='git branch'
alias gcm='git checkout master'
alias gpom='git pull origin master'
alias gmm='git merge master'


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
