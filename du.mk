# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common du stuff.
$(call inherit-product, vendor/du/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/d802/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := d802
PRODUCT_NAME := du_d802
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-D802
PRODUCT_MANUFACTURER := lge
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=lge/g2_open_com/g2:5.0.2/LRX22G/151061918340a:user/release-keys \
    PRIVATE_BUILD_DESC="g2_open_com-user 5.0.2 LRX22G 151061918340a release-keys"

##PRODUCT_PACKAGES += Torch
