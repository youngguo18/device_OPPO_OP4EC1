#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

export DEVICE=OP4EC1
export DEVICE_COMMON=sm8250-common
export VENDOR=OPPO

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
