# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/zte/nx402/device_nx402.mk)

# Release name
PRODUCT_RELEASE_NAME := nx402

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nx402
PRODUCT_NAME := cm_nx402
PRODUCT_BRAND := zte
PRODUCT_MODEL := nx402
PRODUCT_MANUFACTURER := zte
