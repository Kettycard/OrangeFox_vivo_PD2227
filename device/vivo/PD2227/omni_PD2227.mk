#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from PD2227 device
$(call inherit-product, device/vivo/PD2227/device.mk)

PRODUCT_DEVICE := PD2227
PRODUCT_NAME := omni_PD2227
PRODUCT_BRAND := vivo
PRODUCT_MODEL := V2227A
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="qssi-user 16 BP2A.250605.031.A3 compiler260821140852 release-keys"

BUILD_FINGERPRINT := vivo/PD2227/PD2227:16/BP2A.250605.031.A3/compiler260821140852:user/release-keys
