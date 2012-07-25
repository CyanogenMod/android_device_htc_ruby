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

# inherit from msm8660-common
-include device/htc/msm8660-common/BoardConfigCommon.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := ruby

# Kernel
BOARD_KERNEL_BASE := 0x48000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0 androidboot.hardware=ruby no_console_suspend=1
BOARD_KERNEL_PAGE_SIZE := 2048
TARGET_KERNEL_CONFIG := ruby_defconfig
TARGET_PREBUILT_KERNEL := device/htc/ruby/prebuilt/kernel

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wl12xx
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_wl12xx
BOARD_WLAN_DEVICE                := wl12xx_mac80211
BOARD_SOFTAP_DEVICE              := wl12xx_mac80211
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wl12xx_sdio.ko"
WIFI_DRIVER_MODULE_NAME          := "wl12xx_sdio"
WIFI_FIRMWARE_LOADER             := ""

WIFI_BAND:=
WIFI_DRIVER_FW_PATH_AP:=
WIFI_DRIVER_FW_PATH_P2P:=
WIFI_DRIVER_FW_PATH_STA:=
WIFI_DRIVER_FW_PATH_PARAM:=

# QCOM Display
TARGET_USES_OVERLAY := false
TARGET_QCOM_HDMI_OUT := false
TARGET_QCOM_HDMI_RESOLUTION_AUTO := false

# QCOM GPS
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := ruby
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# NFC
BOARD_HAVE_NFC := true

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610611712
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2684354048
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_VOLD_MAX_PARTITIONS := 37
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# Recovery
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_SELECT_BUTTON := true
