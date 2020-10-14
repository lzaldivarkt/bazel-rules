#!/bin/bash

set -e
set -o pipefail

function decrypt_file() {
    SOPS_GPG_EXEC={GPG_BINARY} {SOPS_BINARY_PATH} -d $1 > $2
}

{DECRYPT_FILES}
