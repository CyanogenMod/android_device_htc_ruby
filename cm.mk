# Inherit AOSP device configuration for ruby.
$(call inherit-product, device/htc/ruby/full_ruby.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := ruby

TARGET_BOOTANIMATION_NAME := vertical-540x960

#
# Setup device specific product configuration.
#
PRODUCT_NAME    := cm_ruby
PRODUCT_BRAND   := tmous
PRODUCT_DEVICE  := ruby
PRODUCT_MODEL   := HTC Ruby
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_ruby BUILD_FINGERPRINT=tmous/htc_ruby/ruby:4.0.3/IML74K/373265.3:user/release-keys PRIVATE_BUILD_DESC="2.14.531.3 CL373265 release-keys"

PRODUCT_PACKAGES += \
    Camera \
    Torch



