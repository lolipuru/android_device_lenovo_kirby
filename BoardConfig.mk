#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/lenovo/kirby
KERNEL_PATH := $(DEVICE_PATH)-kernel

TARGET_OPT_IN_OSS_KERNEL := true

# Inherit from sm8650-common
include device/lenovo/sm8650-common/BoardConfigCommon.mk

# Display
TARGET_SCREEN_DENSITY := 400

# Dtb/o
BOARD_PREBUILT_DTBOIMAGE := $(KERNEL_PATH)/dtbo.img
BOARD_PREBUILT_DTBIMAGE_DIR := $(KERNEL_PATH)/dtb

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/configs/properties/vendor.prop

# Inherit from the proprietary version
include vendor/lenovo/kirby/BoardConfigVendor.mk
