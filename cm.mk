$(call inherit-product, device/htc/ruby/full_ruby.mk)

PRODUCT_RELEASE_NAME := Amaze4G

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_ruby BUILD_ID=IML74K BUILD_FINGERPRINT="tmous/htc_ruby/ruby:2.3.4/GRJ22/192596.3:user/release-keys" PRIVATE_BUILD_DESC="1.43.531.3 CL192596 release"

PRODUCT_NAME := cm_ruby
PRODUCT_DEVICE := ruby
