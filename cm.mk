# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := ruby

TARGET_BOOTANIMATION_NAME := vertical-540x960

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/ruby/device_ruby.mk)

# Setup device specific product configuration.
PRODUCT_DEVICE := ruby
PRODUCT_NAME := cm_ruby
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC Ruby
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_ruby BUILD_FINGERPRINT=tmous/htc_ruby/ruby:4.0.3/IML74K/373265.3:user/release-keys PRIVATE_BUILD_DESC="2.14.531.3 CL373265 release-keys" BUILD_NUMBER=373265
