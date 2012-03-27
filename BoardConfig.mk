# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := false

# inherit from common msm8660
-include device/htc/msm8660-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/htc/ruby/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := ruby


BOARD_KERNEL_CMDLINE := console=ttyHSL0 androidboot.hardware=ruby no_console_suspend=1
BOARD_KERNEL_BASE := 0x48000000
BOARD_KERNEL_PAGE_SIZE := 2048 
# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WLAN_DEVICE           := wl1283
BOARD_SOFTAP_DEVICE         := wl1283
WPA_SUPPLICANT_VERSION      := VER_0_6_X
HOSTAPD_VERSION             := VER_0_6_X
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/tiwlan_drv.ko"
WIFI_DRIVER_MODULE_NAME     := "tiwlan_drv"
WIFI_FIRMWARE_LOADER        := "wlan_loader"
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := ruby

BOARD_VOLD_MAX_PARTITIONS := 36
#TARGET_HARDWARE_3D := true

# cat /proc/emmc
# dev:        size     erasesize name
# mmcblk0p24: 00fff600 00000200 "misc"
# mmcblk0p23: 00fffc00 00000200 "recovery"
# mmcblk0p22: 01000000 00000200 "boot"
# mmcblk0p29: 5ffffc00 00000200 "system"
# mmcblk0p30: 13fffe00 00000200 "cache"
# mmcblk0p31: 9ffffe00 00000200 "userdata"


TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2684354560
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_CUSTOM_GRAPHICS := ../../../device/htc/ruby/recovery/graphics.c
TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common

TARGET_PREBUILT_KERNEL := device/htc/ruby/prebuilt/kernel

TARGET_RECOVERY_INITRC := device/htc/ruby/recovery/init.rc
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_ALWAYS_WIPES := true
