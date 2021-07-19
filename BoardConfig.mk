DEVICE_PATH := device/samsung/hl3g

# Architecture
TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := exynos5
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a15

# Include path
TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/include

# Init
# TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_hl3g
# TARGET_RECOVERY_DEVICE_MODULES := libinit_hl3g

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Camera: portrait orientation
BOARD_CAMERA_FRONT_ROTATION := 270
BOARD_CAMERA_BACK_ROTATION := 90

# Display
TARGET_SCREEN_DENSITY := 320

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Assert
TARGET_OTA_ASSERT_DEVICE := hl3g

# Shims
TARGET_LD_SHIM_LIBS += \
    /vendor/bin/gpsd|/vendor/lib/libshim_gps.so

# Inherit from the proprietary version
include device/samsung/universal5260-common/BoardConfigCommon.mk

