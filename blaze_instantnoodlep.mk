#
# Copyright (C) 2018 The LineageOS Project
#               2022 The Evolution X Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from instantnoodlep device
$(call inherit-product, device/oneplus/instantnoodlep/device.mk)

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/blaze/config/common_full_phone.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Project Blaze Stuff
BLAZE_BUILD_TYPE := UNOFFICIAL
BLAZE_MAINTAINER := ZIZZYBOI
TARGET_SUPPORTS_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_FACE_UNLOCK := true
EXTRA_UDFPS_ANIMATIONS := true

# GAPPS
WITH_GAPPS := true

PRODUCT_NAME := blaze_instantnoodlep
PRODUCT_DEVICE := instantnoodlep
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := IN2025

PRODUCT_SYSTEM_NAME := OnePlus8Pro
PRODUCT_SYSTEM_DEVICE := OnePlus8Pro

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus8Pro-user 13 RKQ1.211119.001 Q.f9c4de_1_5b9c release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/OnePlus8Pro/OnePlus8Pro:13/RKQ1.211119.001/Q.f9c4de_1_5b9c:user/release-keys
