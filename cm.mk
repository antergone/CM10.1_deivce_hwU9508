# Correct bootanimation size for the screen
TARGET_BOOTANIMATION_NAME := vertical-720x1280

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := u9508

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/u9508/u9508.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := u9508
PRODUCT_NAME := cm_u9508
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := HUAWEI U9508
PRODUCT_MANUFACTURER := huawei
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=u9508 BUILD_FINGERPRINT=Huawei/U9508/hwu9508:4.1.2/HuaweiU9508/CHNC00B618:user/ota-rel-keys,release-keys PRIVATE_BUILD_DESC="U9508-user 4.1.2 HuaweiU9508 CHNC00B618 ota-rel-keys,release-keys"
