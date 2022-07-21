# shellcheck shell=bash

alias ls='ls -alv --color=auto --group-directories-first'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias cd..='cd ..'
alias rm='rm -v'
alias cp='cp -v'
alias mv='mv -v'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias curl='curl --no-progress-meter'
alias work='cd "${HOME}/work"'
alias repos='cd "${HOME}/work/repos"'

function cd-git-root() {
    local root
    root="$(git rev-parse --show-cdup)" || return
    [[ -z "${root}" ]] && return
    echo "${root}"
    cd "${root}" || return
}
