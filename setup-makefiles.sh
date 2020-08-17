#!/bin/bash
#
# Copyright (C) 2018-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

export DEVICE=curtana
export VENDOR=xiaomi
INITIAL_COPYRIGHT_YEAR=2020

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "${MY_DIR}" ]]; then MY_DIR="${PWD}"; fi

XPERIENCE_ROOT="${MY_DIR}/../../.."

HELPER="${XPERIENCE_ROOT}/vendor/xperience/build/tools/extract_utils.sh"
if [ ! -f "${HELPER}" ]; then
    echo "Unable to find helper script at ${HELPER}"
    exit 1
fi
source "${HELPER}"

# Reinitialize the helper for device
INITIAL_COPYRIGHT_YEAR="$DEVICE_BRINGUP_YEAR"
setup_vendor "${DEVICE}" "${VENDOR}" "${XPERIENCE_ROOT}" false

# Copyright headers and guards
    write_headers

# The standard device blobs
write_makefiles "${MY_DIR}/../${DEVICE}/proprietary-files.txt" true

# Finish
write_footers

