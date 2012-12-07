## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := C8812

# Boot animation
TARGET_BOOTANIMATION_NAME := vertical-480x800

# Inherit device configuration
$(call inherit-product, device/huawei/c8812/full_c8812.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := c8812
PRODUCT_NAME := cm_c8812
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := C8812
PRODUCT_MANUFACTURER := Huawei

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=c8812 \
	BUILD_DISPLAY_ID="JZO54K" \
	BUILD_FINGERPRINT=huawei/c8812:4.0.4/JZO54K/223133:userdebug/test-keys \
	PRIVATE_BUILD_DESC="huawei-user 4.0.4 JZO54K 223133 test-keys" \
	BUILD_NUMBER=223133
