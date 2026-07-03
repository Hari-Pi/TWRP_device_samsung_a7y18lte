#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from a7y18lte device
$(call inherit-product, device/samsung/a7y18lte/device.mk)

# Inherit common PBRP product files.
$(call inherit-product, vendor/pb/config/common.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := a7y18lte
PRODUCT_NAME := pb_a7y18lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A750F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a7y18ltejt-user 10 QP1A.190711.020 A750FXXU5CVI1 release-keys"

BUILD_FINGERPRINT := samsung/a7y18ltejt/a7y18lte:10/QP1A.190711.020/A750FXXU5CVI1:user/release-keys