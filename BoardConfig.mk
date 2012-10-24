# Copyright (C) 2010 The Android Open Source Project
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
# throughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
# The proprietary variant sets USE_CAMERA_STUB := false, this way
# we use the camera stub when the vendor tree isn't present, and
# the true camera library when the vendor tree is available.
USE_CAMERA_STUB := true
BOARD_USES_GENERIC_AUDIO := true

# Inherit from the proprietary version if exists
#-include vendor/huawei/c8812/BoardConfigVendor.mk

# Platform
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a8
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME := c8812
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RECOVERY := false
TARGET_NO_RADIOIMAGE := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USE_QCOM_PMEM := true
BOARD_VENDOR_QCOM_AMSS_VERSION := 6220
BOARD_HAS_SDCARD_INTERNAL := true

# Graphics
TARGET_HARDWARE_3D := false
USE_OPENGL_RENDERER := true
BOARD_USES_ADRENO_200 := true
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE
TARGET_USES_C2D_COMPOSITION := true
TARGET_HAVE_BYPASS := false
#TARGET_QCOM_HDMI_OUT := true
TARGET_QCOM_HDMI_OUT:=false
TARGET_GRALLOC_USES_ASHMEM := false
TARGET_USES_OVERLAY := true
TARGET_USES_GENLOCK := true
TARGET_FORCE_CPU_UPLOAD := true
BOARD_USES_QCNE := true
TARGET_USES_SF_BYPASS := false
WEBCORE_INPAGE_VIDEO := true
TARGET_HAVE_TSLIB := true
BOARD_EGL_CFG := device/huawei/c8812/egl.cfg

# Kernel
BUILD_KERNEL := true
TARGET_KERNEL_CONFIG := hw_msm7x27a_defconfig
TARGET_KERNEL_SOURCE := kernel/huawei/c8812
KERNEL_EXTERNAL_MODULES:
	cp device/huawei/c8812/prebuilt/wifi/dhd_4330.ko $(KERNEL_MODULES_OUT)
TARGET_KERNEL_MODULES := KERNEL_EXTERNAL_MODULES
BOARD_KERNEL_CMDLINE := console=tty0 androidboot.hardware=huawei
BOARD_INSTALLER_CMDLINE := $(BOARD_KERNEL_CMDLINE)
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 2048

# Wifi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
#BOARD_HOSTAPD_DRIVER := NL80211
#BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcm4330
BOARD_LEGACY_NL80211_STA_EVENTS := true

WIFI_DRIVER_MODULE_PATH := "/system/wifi/dhd_4330.ko"
WIFI_DRIVER_FW_PATH_AP := "/system/wifi/fw_4330_b2.bin"
WIFI_DRIVER_FW_PATH_STA := "/system/wifi/fw_4330_b2.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/wifi/fw_4330_b2.bin"
WIFI_DRIVER_MODULE_ARG := "iface_name=wlan firmware_path=/system/wifi/fw_4330_b2.bin nvram_path=/system/wifi/nvram_4330.txt"
WIFI_DRIVER_MODULE_NAME := "dhd_4330"


# Sensors
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := c8812
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
#BOARD_GPS_LIBRARIES := libloc_api

# FM
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# File System
TARGET_USERIMAGES_USE_EXT4 := true

# For bootmenu - not needed right now.
#BOARD_USES_BOOTMENU := true
BOARD_MMC_DEVICE := /dev/block/mmcblk0
BOARD_DATA_DEVICE := /dev/block/mmcblk0p13
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p12
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1p1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
#
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00C00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00C00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 314572800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 183500800
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/c8812/recovery/graphics.c
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"
BOARD_HAS_NO_SELECT_BUTTON := true
#BOARD_TOUCH_RECOVERY := false

# Custom releasetools for old partition table.
#TARGET_PROVIDES_RELEASETOOLS := true
#TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/huawei/c8812/releasetools/ota_from_target_files

# ETC
TARGET_SPECIFIC_HEADER_PATH := device/huawei/c8812/include

TARGET_COMPRESS_MODULE_SYMBOLS := false
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
# ?? 
# BOARD_ALWAYS_INSECURE := true
