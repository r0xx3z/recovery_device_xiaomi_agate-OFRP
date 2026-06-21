#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := agate

# Inherit from common AOSP config.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device specific configs
$(call inherit-product, device/xiaomi/agate/device.mk)

## Device identifier. 
PRODUCT_DEVICE := agate
PRODUCT_NAME := twrp_agate
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 21081111RG
PRODUCT_MANUFACTURER := Xiaomi 
