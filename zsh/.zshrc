#
# .zshrc
# By Remiii - 2012/10/27
# Set default bash to zsh : chsh -s /bin/zsh
#

#
# ZSH OPTS
#
setopt appendhistory
setopt histignorealldups
setopt transient_rprompt

HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
autoload -Uz compinit; compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors "${(s.:.)LSCOLORS}"

#
# KEY BINDING
#
bindkey -e
bindkey ";5D" backward-word
bindkey ";5C" forward-word
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
bindkey "\e[3~" delete-char
# urxvt
bindkey "\e[7~" beginning-of-line
bindkey "\e[8~" end-of-line
# /foo/bar/^W -> /foo/
WORDCHARS="${WORDCHARS:s#/#}"
# Better history behavior (acts the same as vim)
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "\e[A" history-beginning-search-backward-end
bindkey "\e[B" history-beginning-search-forward-end

#
# ENV
#
export CC=colorgcc
export EDITOR=vim
export PAGER=less
export LESS_TERMCAP_mb=$'\e[01;31m'
export LESS_TERMCAP_md=$'\e[01;37m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;44;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[01;32m'

#
# ALIASES
#
# Standard
alias ls='ls -Gh'
alias l='ls -Gl'
alias ll='ls -Gl'
alias la='ls -Gal'
alias rm='rm -v'
alias cgrep='grep --color=always'
alias e='$EDITOR'
alias re='make re'
alias monitor_file='watch ls -lh'
alias clean_py='find . -name "*.pyc" -print -exec rm {} \;'
# Personnal
alias h='ssh -t user@remotehost screen -Ux'
alias ak='ssh-add ~/.ssh/[SSH-KEY]'

#
# PROMPT
#
autoload colors; colors
RPROMPT="[%{$fg_bold[red]%}%n%{$fg_bold[blue]%}@%{$fg_no_bold[green]%}%M%{$reset_color%}]"
PROMPT="[%{$fg_bold[green]%}%~%{$reset_color%}]%(?.%{$fg_bold[blue]%}.%{$fg_bold[green]%})%% %{$reset_color%}"

#
# ITERM TITLE
#
case $TERM in
    xterm*)
        precmd () {print -Pn "\e]0;%n@%m: %~\a"}
        ;;
esac
