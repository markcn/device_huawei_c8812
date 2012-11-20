# Copyright (C) 2011 The Android Open Source Project
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

# Inherit from those products. Most specific first.

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from c8812 device
$(call inherit-product, device/huawei/c8812/device.mk)

# Include all languages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)

# c8812 uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

#PRODUCT_PROPERTY_OVERRIDES += \
#        dalvik.vm.heapstartsize=5m \
#        dalvik.vm.heapgrowthlimit=48m \
#        dalvik.vm.heapsize=128m

# USB mass storage
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.usb.config=mass_storage

# ADB access
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.service.adb.enable=1

# Camera
#PRODUCT_PACKAGES += \
#	Camera

# Audio
#PRODUCT_PACKAGES += \
#	audio.a2dp.default \
#	audio_policy.msm7x27a \
#	audio.primary.msm7x27a \
#	libaudioutils

##
##	audio.primary.default \
##	audio_policy.default \
# Camera
#PRODUCT_PACKAGES += \
#	camera.msm7x27a \
#	libcamera

# Video
PRODUCT_PACKAGES += \
	copybit.msm7x27a \
	gralloc.msm7x27a \
	hwcomposer.msm7x27a \
	libgenlock \
	libmemalloc \
	liboverlay \
	libQcomUI \
	libtilerenderer

# Media
PRODUCT_PACKAGES += \
	libOmxCore \
	libOmxVenc \
	libOmxVdec \
	libmm-omxcore \
	libdivxdrmdecrypt \
	libstagefrighthw

# GPS
#PRODUCT_PACKAGES += \
#	gps.c8812

# Lights
#PRODUCT_PACKAGES += \
#	lights.msm7x27a

# Sensors (Prebuilt)

# Live Wallpapers
#PRODUCT_PACKAGES += \
#	LiveWallpapers \
#	LiveWallpapersPicker \
#	VisualizationWallpapers \
#	librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
	make_ext4fs \
	setup_fs

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := c8812
PRODUCT_NAME := cm_c8812
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := C8812
PRODUCT_MANUFACTURER := Huawei
