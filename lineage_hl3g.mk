# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from hl3g device
$(call inherit-product, device/samsung/hl3g/device.mk)

# Inherit some common lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, vendor/lineage/config/twrp.mk)

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hl3g \
    PRIVATE_BUILD_DESC="hl3gxx-user 5.1.1 LMY47X N750XXUDPA1 release-keys"

BUILD_FINGERPRINT := samsung/hl3gxx/hl3g:5.1.1/LMY47X/N750XXUDPA1:user/release-keys

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hl3g
PRODUCT_NAME := lineage_hl3g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N750
PRODUCT_MANUFACTURER := samsung
