# shellcheck shell=bash

# enable programmable completion features
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        # shellcheck source=/dev/null
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        # shellcheck source=/dev/null
        . /etc/bash_completion
    fi
fi

# load kubectl autocompletion
if command -v "kubectl" 1>/dev/null 2>&1; then
    # shellcheck source=/dev/null
    . <(kubectl completion bash)
fi
