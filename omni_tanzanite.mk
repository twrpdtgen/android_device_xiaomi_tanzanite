#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from tanzanite device
$(call inherit-product, device/xiaomi/tanzanite/device.mk)

PRODUCT_DEVICE := tanzanite
PRODUCT_NAME := omni_tanzanite
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := tanzanite
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tanzanite-user 12 SP1A.210812.016 OS2.0.206.0.VOGMIXM release-keys"

BUILD_FINGERPRINT := Redmi/tanzanite/tanzanite:12/SP1A.210812.016/OS2.0.206.0.VOGMIXM:user/release-keys
