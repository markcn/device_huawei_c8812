# Correct bootanimation size for the screen
TARGET_BOOTANIMATION_NAME := vertical-480x800

# Inherit device configuration
$(call inherit-product, device/huawei/c8812/c8812.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/cdma.mk)

# Setup device configuration
PRODUCT_NAME := cm_c8812
PRODUCT_DEVICE := c8812
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := HUAWEI C8812
PRODUCT_MANUFACTURER := HUAWEI
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C8812 PRODUCT_DEVICE=hwc8812 BUILD_FINGERPRINT=Huawei/C8812/hwc8812:4.0.4/HuaweiC8812/C17B926:user/ota-rel-keys,release-keys PRIVATE_BUILD_DESC="C8812-user 4.0.4 IMM76D C17B926 release-keys" BUILD_NUMBER=C17B926
PRODUCT_RELEASE_NAME := c8812
