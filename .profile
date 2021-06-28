# shellcheck shell=bash
# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
umask 077

# set PATH so it includes user's private bin
PATH="${HOME}/.local/bin:${HOME}/bin:${PATH}"

# exports
export LANG='en_US.UTF-8'

export TMP='/tmp'
export TMPDIR="${TMP}"

export EDITOR='nano'
export XDG_CONFIG_HOME="${HOME}/.config"

GPG_TTY="$(tty)"
export GPG_TTY

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        # shellcheck source=/dev/null
        . "$HOME/.bashrc"
    fi
fi
