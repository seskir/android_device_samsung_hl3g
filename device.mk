$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/samsung/hl3g/hl3g-vendor.mk)

# Dalvik VM specific for devices with 2048 MB of RAM
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# call Samsung LSI board support package
$(call inherit-product, hardware/samsung_slsi-cm/exynos5/exynos5.mk)
$(call inherit-product, hardware/samsung_slsi-cm/exynos5260/exynos5260.mk)

#DEVICE_PACKAGE_OVERLAYS += device/samsung/hl3g/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := 320dpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

# Local Path
LOCAL_PATH := device/samsung/hl3g

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.universal5260:root/fstab.universal5260 \
    $(LOCAL_PATH)/rootdir/init.wifi.rc:root/init.wifi.rc \
    $(LOCAL_PATH)/rootdir/init.universal5260.rc:root/init.universal5260.rc \
    $(LOCAL_PATH)/rootdir/init.universal5260.usb.rc:root/init.universal5260.usb.rc \
    $(LOCAL_PATH)/rootdir/ueventd.universal5260.rc:root/ueventd.universal5260.rc \

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.primary.default \
    libaudio-resampler \
    audio.primary.universal5260 \

# Media config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml  \
# Camera
PRODUCT_PACKAGES += \
    camera.universal5433

PRODUCT_PACKAGES += \
    Snap

PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1

# samsung symbols 
PRODUCT_PACKAGES += \
    libsamsung_symbols

# needed by open-source audio-hal
PRODUCT_PACKAGES += \
    mixer_paths.xml

# Wifi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    wpa_supplicant

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
   
# Gps
PRODUCT_COPY_FILES += \
 $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf

PRODUCT_PACKAGES += \
    libdmitry

# Radio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/sbin/cbd:root/sbin/cbd

# RIL
#PRODUCT_PACKAGES += \
#    libsecril-client \
#    libsecril-client-sap \
#    modemloader

#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.telephony.ril_class=Exynos5260RIL

# GPU
PRODUCT_PACKAGES += \
    gralloc.exynos5 \
    libion \
    hwcomposer.exynos5 \
    memtrack.exynos5 \
    libfimg \
    libstlport \

PRODUCT_PROPERTY_OVERRIDES += \
    ro.bq.gpu_to_cpu_unsupported=1 \
    ro.opengles.version=196608 \
    ro.sf.lcd_density=320 \

# HWUI
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.texture_cache_size=24 \
    ro.hwui.layer_cache_size=16 \
    ro.hwui.path_cache_size=4 \
    ro.hwui.shape_cache_size=1 \
    ro.hwui.gradient_cache_size=0.5 \
    ro.hwui.drop_shadow_cache_size=2 \
    ro.hwui.r_buffer_cache_size=2 \
    ro.hwui.text_small_cache_width=1024 \
    ro.hwui.text_small_cache_height=512 \
    ro.hwui.text_large_cache_width=2048 \
    ro.hwui.text_large_cache_height=1024 \
    ro.hwui.fbo_cache_size=8 \

# Power
PRODUCT_PACKAGES += \
    power.universal5260

# Lights
PRODUCT_PACKAGES += \
    lights.universal5260

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# USB Accesory
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Service mode
PRODUCT_PACKAGES += \
    SamsungServiceMode

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# Filesystem
PRODUCT_PACKAGES += \
    setup_fs \
    make_ext4fs \
    e2fsck 

# PERMISSONS
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Turn off some JNI
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    ro.zygote.disable_gl_preload=true \
    dalvik.vm.checkjni=false \

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=128m \
    dalvik.vm.heapsize=512m 