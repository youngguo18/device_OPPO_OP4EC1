#
# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Include the common OEM chipset BoardConfig.
include device/OPPO/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/OPPO/OP4EC1

# Assert
TARGET_OTA_ASSERT_DEVICE := OP4EC1,OP4F7FL1,OP4EA7

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Touch
SOONG_CONFIG_NAMESPACES += OPLUS_LINEAGE_TOUCH_HAL
SOONG_CONFIG_OPLUS_LINEAGE_TOUCH_HAL := INCLUDE_DIR
SOONG_CONFIG_OPLUS_LINEAGE_TOUCH_HAL_INCLUDE_DIR := \
    $(DEVICE_PATH)/touch/include
