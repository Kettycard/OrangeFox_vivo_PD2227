#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common TWRP / OrangeFox stuff
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from PD2227 device
$(call inherit-product, device/vivo/PD2227/device.mk)

PRODUCT_DEVICE := PD2227
PRODUCT_NAME := twrp_PD2227
PRODUCT_BRAND := vivo
PRODUCT_MODEL := V2227A
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="PD2227-user 14 UKQ1.230917.001 release-keys"

BUILD_FINGERPRINT := vivo/PD2227/PD2227:14/UKQ1.230917.001:user/release-keys
