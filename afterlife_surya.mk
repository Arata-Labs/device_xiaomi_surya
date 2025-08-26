#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from surya device
$(call inherit-product, device/xiaomi/surya/device.mk)

# Inherit some common Afterlife stuff.
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

# AfterLify
AFTERLIFE_MAINTAINER := Skyy丨アラタ
TARGET_ENABLE_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
SYSTEM_OPTIMIZE_JAVA := true
TARGET_BOOT_ANIMATION_RES := 1080
SYSTEMUI_OPTIMIZE_JAVA := true
TARGET_SUPPORTS_QUICK_TAP := true

# Additional flags
TORCH_STR_SUPPORTED := true
TARGET_BUILD_DEVICE_AS_WEBCAM := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := afterlife_surya
PRODUCT_DEVICE := surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2007J20CG
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="surya_eea-user 12 RKQ1.211019.001 V14.0.5.0.SJGEUXM release-keys" \
    BuildFingerprint=POCO/surya_eea/surya:12/RKQ1.211019.001/V14.0.5.0.SJGEUXM:user/release-keys
