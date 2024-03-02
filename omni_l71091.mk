#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from l71091 device
$(call inherit-product, device/lenovo/l71091/device.mk)

PRODUCT_DEVICE := l71091
PRODUCT_NAME := omni_l71091
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo L71091
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="l71091-user 12 SKQ1.220519.001 14.0.697_221216 release-keys"

BUILD_FINGERPRINT := Lenovo/l71091/l71091:12/SKQ1.220519.001/14.0.697_221216:user/release-keys
