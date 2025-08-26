#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6150-common
include device/xiaomi/sm6150-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/surya

# Assert
TARGET_OTA_ASSERT_DEVICE := surya,karna

# Audio
TARGET_PROVIDES_AUDIO_EXTNS := true

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/configs/hidl/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := surya_defconfig
TARGET_KERNEL_SOURCE := kernel/xiaomi/surya
TARGET_KERNEL_CLANG_COMPILE := true
KERNEL_CC := CC=clang
TARGET_KERNEL_CLANG_VERSION := clang-r547379
TARGET_KERNEL_CLANG_PATH := $(shell pwd)/prebuilts/clang/host/linux-x86/$(TARGET_KERNEL_CLANG_VERSION)

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 134217728
BOARD_CACHEIMAGE_PARTITION_SIZE := 402653184
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 134217728
BOARD_SUPER_PARTITION_SIZE := 8589934592

BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 8585740288 # (BOARD_SUPER_PARTITION_SIZE - 4194304) 4MiB overhead

# Power
TARGET_TAP_TO_WAKE_NODE := "/sys/touchpanel/double_tap"

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/properties/odm.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/properties/vendor.prop

# Screen density
TARGET_SCREEN_DENSITY := 400

# Vendor security patch level
VENDOR_SECURITY_PATCH := 2023-06-01

# Inherit from proprietary files
include vendor/xiaomi/surya/BoardConfigVendor.mk
