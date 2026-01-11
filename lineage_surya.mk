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

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Signing
-include vendor/private-keys/keys/keys.mk

# Axionify
ifeq ($(IS_AXION),true)
    TARGET_ENABLE_BLUR := true
    AXION_CAMERA_REAR_INFO := 64,13,2,2
    AXION_CAMERA_FRONT_INFO := 20
    AXION_MAINTAINER := Skyy丨アラタ
    AXION_PROCESSOR := Qualcomm®_Snapdragon_732G
    BYPASS_CHARGE_SUPPORTED := true
    PERF_GOV_SUPPORTED := true
    PERF_DEFAULT_GOV := schedutil
    PERF_ANIM_OVERRIDE := false
    WITH_GMS := true
    # Los prebuilts
    ifneq ($(WITH_GMS),true)
        TARGET_INCLUDES_LOS_PREBUILTS := true
    endif
endif

# OrionOS flags
ifeq ($(IS_ORION),true)
    ORION_MAINTAINER := Skyy丨アラタ
    ORION_GAPPS := true
    WITH_GMS := true
    TARGET_ENABLE_BLUR := true
    TARGET_BOOT_ANIMATION_RES := 1080
endif

# Additional flags
TORCH_STR_SUPPORTED := true
TARGET_BUILD_DEVICE_AS_WEBCAM := true

# Device Manufacturer
PRODUCT_NAME := lineage_surya
PRODUCT_DEVICE := surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2007J20CG
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="surya_eea-user 12 RKQ1.211019.001 V14.0.5.0.SJGEUXM release-keys" \
    BuildFingerprint=POCO/surya_eea/surya:12/RKQ1.211019.001/V14.0.5.0.SJGEUXM:user/release-keys
