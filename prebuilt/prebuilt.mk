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

# Warning: this is actually a product definition, to be inherited from.
############################################
## Shell Scripts
############################################

rootscripts := \
	init.qcom.sh \
	init.qcom.usb.sh

etcscripts := \
	etc/init.goldfish.sh \
	etc/init.qcom.bt.sh \
	etc/init.qcom.coex.sh \
	etc/init.qcom.fm.sh \
	etc/init.qcom.composition_type.sh \
	etc/init.qcom.post_boot.sh \
	etc/init.qcom.sdio.sh \
	etc/init.qcom.wifi.sh

PRODUCT_COPY_FILES += $(foreach file,$(rootscripts),\
	$(LOCAL_PATH)/$(file):root/$(file))

PRODUCT_COPY_FILES += $(foreach file,$(etcscripts),\
	$(LOCAL_PATH)/$(file):system/etc/$(file))

############################################
## RC Files
############################################
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/init.goldfish.rc:root/init.goldfish.rc \
	$(LOCAL_PATH)/init.huawei.rc:root/init.huawei.rc \
	$(LOCAL_PATH)/init.msm7627a.rc:root/init.msm7627a.rc \
	$(LOCAL_PATH)/init.msm7630.rc:root/init.msm7630.rc \
	$(LOCAL_PATH)/init.qcom.usb.rc:root/init.qcom.usb.rc \
	$(LOCAL_PATH)/init.rc:root/init.rc \
	$(LOCAL_PATH)/init.target.rc:root/init.target.rc \
	$(LOCAL_PATH)/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
	$(LOCAL_PATH)/ueventd.rc:root/ueventd.rc 

############################################
## Conf Files
############################################
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/etc/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	$(LOCAL_PATH)/etc/hostapd_default.conf:system/etc/hostapd_default.conf \
	$(LOCAL_PATH)/etc/media_profiles.xml:/system/etc/media_profiles.xml \
	$(LOCAL_PATH)/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
	$(LOCAL_PATH)/etc/AudioFilter_MSM7627A_C8812.csv:system/etc/AudioFilter_MSM7627A_C8812.csv \
	$(LOCAL_PATH)/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
	$(LOCAL_PATH)/etc/audio_effects.conf:system/etc/audio_effects.conf \
	$(LOCAL_PATH)/etc/cplusw.conf:system/etc/cplusw.conf \
	$(LOCAL_PATH)/etc/ctnet.conf:system/etc/ctnet.conf \
	$(LOCAL_PATH)/etc/OperatorPolicy.xml:system/etc/OperatorPolicy.xml \
	$(LOCAL_PATH)/etc/UserPolicy.xml:system/etc/UserPolicy.xml \
	$(LOCAL_PATH)/etc/ctwap.conf:system/etc/ctwap.conf \
	$(LOCAL_PATH)/etc/gps.conf:system/etc/gps.conf \
	$(LOCAL_PATH)/etc/wpa_supplicant.conf:system/etc/wpa_supplicant.conf 
#############################################
## fstab files 
#############################################
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/etc/vold.fstab:system/etc/vold.fstab \
	$(LOCAL_PATH)/etc/internal_sd.fstab:system/etc/internal_sd.fstab \
	$(LOCAL_PATH)/etc/external_sd.fstab:system/etc/external_sd.fstab
############################################
## WIFI
############################################

$(call inherit-product-if-exists,$(LOCAL_PATH)/wifi/wifi.mk)

############################################
## Keyboard
############################################

$(call inherit-product-if-exists,$(LOCAL_PATH)/keyboards/keyboards.mk)
#$(call inherit-product-if-exists,$(LOCAL_PATH)/FMRadio/Android.mk)
