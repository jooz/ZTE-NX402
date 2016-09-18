## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := NX402

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)


# Inherit device configuration
$(call inherit-product, device/ZTE/NX402/device_NX402.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := NX402
PRODUCT_NAME := cm_NX402
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := NX402
PRODUCT_MANUFACTURER := ZTE
