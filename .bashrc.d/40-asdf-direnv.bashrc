# shellcheck shell=bash

command -v "asdf" 1>/dev/null 2>&1 || return

# Hook direnv into your shell.
# eval "$(asdf exec direnv hook bash)"

# A shortcut for asdf managed direnv.
direnv() {
    asdf exec direnv "$@"
}
