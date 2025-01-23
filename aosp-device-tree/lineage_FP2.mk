#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from FP2 device
$(call inherit-product, device/fairphone/FP2/device.mk)

PRODUCT_DEVICE := FP2
PRODUCT_NAME := lineage_FP2
PRODUCT_BRAND := Fairphone
PRODUCT_MODEL := FP2
PRODUCT_MANUFACTURER := fairphone

PRODUCT_GMS_CLIENTID_BASE := android-fairphone

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fp2_gms-user 10 23.02.0-rel.0 gms-9bba2609 release-keys"

BUILD_FINGERPRINT := Fairphone/FP2/FP2:10/23.02.0-rel.0/gms-9bba2609:user/release-keys
