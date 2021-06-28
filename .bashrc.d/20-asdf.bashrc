# shellcheck shell=bash

export ASDF_DIR="${HOME}/.asdf"

# shellcheck source=/dev/null
[ -r "${ASDF_DIR}/asdf.sh" ] && \. "${ASDF_DIR}/asdf.sh"
# shellcheck source=/dev/null
[ -r "${ASDF_DIR}/completions/asdf.bash" ] && \. "${ASDF_DIR}/completions/asdf.bash"
