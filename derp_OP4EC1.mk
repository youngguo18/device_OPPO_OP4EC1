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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Matrixx stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Matrixx internal properties
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false

# Enable extra UDFPS animations
EXTRA_UDFPS_ANIMATIONS := true

# Set Boot Animination Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := derp_OP4EC1
PRODUCT_DEVICE := OP4EC1
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := OPPO Reno6 Pro+ 5G
PRODUCT_MANUFACTURER := OPPO
PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="PENM00-user 13 TP1A.220905.001 R.18dbd80_2_1 release-keys" \
    BuildFingerprint="OPPO/PENM00/OP4EC1:13/TP1A.220905.001/R.18dbd80_2_1:user/release-keys" \
    DeviceName=OP4EC1 \
    DeviceProduct=OPPO Reno6 Pro+ 5G \
    SystemDevice=OPPO Reno6 Pro+ 5G \
    SystemName=OPPO Reno6 Pro+ 5G
