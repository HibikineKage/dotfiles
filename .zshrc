source ~/.zplug/init.zsh

zplug "zplug/zplug", hook-build:"zplug --self-manage"
zplug "sorin-ionescu/prezto"
zplug "rupa/z"
zplug "mollifier/cd-gitroot"
zplug "b4b4r07/enhancd", use:init.sh
zplug "b4b4r07/zsh-gomi", if:"which fzf"
zplug "zsh-users/zsh-history-substring-search", defer:2
zplug "zsh-users/zsh-completions"
zplug "junegunn/fzf-bin", as:command, from:gh-r, rename-to:fzf
zplug "peco/peco", as:command, from:gh-r, use:"*amd64*"
zplug "mrowa44/emojify", as:command
zplug "stedolan/jq", from:gh-r, as:command, on:b4b4r07/emoji-cli, if:"which jq"
zplug "walesmd/caniuse.plugin.zsh"
zstyle ':prezto:module:prompt' theme 'pure'
#zplug "modules/history",    from:prezto 
#zplug "modules/utility",    from:prezto 
#zplug "modules/ruby",       from:prezto 
#zplug "modules/ssh",        from:prezto 
#zplug "modules/terminal",   from:prezto 
#zplug "modules/directory",  from:prezto
zplug load --verbose

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
    source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

if [[ -s "$HOME/src/google-cloud-sdk" ]]; then
    source $HOME/src/google-cloud-sdk/completion.zsh.inc
    source $HOME/src/google-cloud-sdk/path.zsh.inc
fi

# Customize to your needs...
PURE_PROMPT_SYMBOL=">"
alias hyperlog="git log --oneline --graph --decorate=full"
alias cd..="cd .."
alias lasimg="cd /mnt/c/Users/Kage/src/lastyearimages/"
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



[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
