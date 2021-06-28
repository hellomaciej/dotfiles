# shellcheck shell=bash
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
*i*) ;;
*) return ;;
esac

# source bashrc modules
BASHRC_DIR="${HOME}/.bashrc.d"

if [ -d "${BASHRC_DIR}" ]; then
    for file in "${BASHRC_DIR}"/*.bashrc; do
        if [ -r "${file}" ]; then
            # shellcheck source=/dev/null
            . "${file}"
        fi
    done
    unset file
fi
