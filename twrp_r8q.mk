#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common AOSP config.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from r8q device
$(call inherit-product, device/samsung/r8q/device.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/r8q/recovery/root,recovery/root)

PRODUCT_DEVICE := r8q
PRODUCT_NAME := twrp_r8q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G7810
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="r8qzcx-user 11 RP1A.200720.012 G7810ZCU6HWH5 release-keys"

BUILD_FINGERPRINT := samsung/r8qzcx/r8q:11/RP1A.200720.012/G7810ZCU6HWH5:user/release-keys
