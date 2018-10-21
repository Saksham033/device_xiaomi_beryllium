#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm845-common
-include device/xiaomi/sdm845-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/beryllium

# Assert
TARGET_OTA_ASSERT_DEVICE := beryllium

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# Kernel
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
TARGET_KERNEL_CONFIG := beryllium_defconfig
TARGET_KERNEL_SOURCE := kernel/xiaomi/beryllium

# Inherit from the proprietary version
-include vendor/xiaomi/beryllium/BoardConfigVendor.mk

# Sepolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private

# Treble
PRODUCT_EXTRA_VNDK_VERSIONS := 27
DEVICE_FRAMEWORK_MANIFEST_FILE := $(DEVICE_PATH)/framework_manifest.xml

# Vendor init
TARGET_INIT_VENDOR_LIB := libinit_beryllium
TARGET_RECOVERY_DEVICE_MODULES := libinit_beryllium