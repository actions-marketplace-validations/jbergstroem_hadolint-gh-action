#!/usr/bin/env bash

[[ -n "${DEBUG}" ]] && set -x
set -euo pipefail
shopt -s nullglob globstar

DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

# shellcheck source=lib/hadolint.sh
. "${DIR}"/lib/hadolint.sh
# shellcheck source=lib/main.sh
. "${DIR}"/lib/main.sh
# shellcheck source=lib/validate.sh
. "${DIR}"/lib/validate.sh

run
