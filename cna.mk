# Inherit device configuration for USC Electrify M.
$(call inherit-product, device/motorola/scorpion_mini/full_solstice.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/common_full_phone.mk)

# Inherit some common stuff.
#$(call inherit-product, vendor/cna/config/gsm.mk)

#DEVICE_PACKAGE_OVERLAYS += device/motorola/solstice/overlay/cm

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cna_solstice
PRODUCT_BRAND := usc
PRODUCT_DEVICE := solstice
PRODUCT_DEVICE_PREFIX := cdma
PRODUCT_MODEL := XT905
PRODUCT_MANUFACTURER := Motorola
PRODUCT_RELEASE_NAME := ELECTRIFY M
PRODUCT_SFX := usc

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=${PRODUCT_DEVICE}_${PRODUCT_SFX} \
   BUILD_NUMBER=${DATE} \
   TARGET_DEVICE=${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE} \
   BUILD_FINGERPRINT=${PRODUCT_BRAND}/${PRODUCT_DEVICE}_${PRODUCT_SFX}/${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE}:${PLATFORM_VERSION}/${BUILD_ID}/${DATE}:user/release-keys \
   PRIVATE_BUILD_DESC="${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE}-user ${PLATFORM_VERSION} ${BUILD_ID} ${DATE} release-keys" \
   PRODUCT_BRAND=${PRODUCT_BRAND} \
   BUILD_UTC_DATE= \
   PRODUCT_DEFAULT_LANGUAGE=en \
   PRODUCT_DEFAULT_REGION=US \
