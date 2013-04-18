$(call inherit-product, device/motorola/scorpion_mini/full_solstice.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/cdma.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/solstice/overlay/cm

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=solstice TARGET_DEVICE=solstice BUILD_FINGERPRINT="motorola/XT905_usc/solstice:4.1.1/9.8.1Q_25/35:user/release-keys" PRIVATE_BUILD_DESC="smq_usc-user 4.1.1 9.8.1Q_25 35 release-keys"

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

PRODUCT_NAME := cm_solstice
PRODUCT_DEVICE := solstice

