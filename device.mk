# Local Path
LOCAL_PATH := device/samsung/hl3g

# Ramdisk
PRODUCT_PACKAGES += \
    init.target.rc \

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf
