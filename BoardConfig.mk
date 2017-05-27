# inherit from the proprietary version
-include vendor/samsung/smdk5260-common/BoardConfigVendor.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := hl3g,hl3gxx

# Include path
TARGET_SPECIFIC_HEADER_PATH := device/samsung/hl3g/include

# Kernel
TARGET_KERNEL_CONFIG := hl3g_defconfig

# RIL
BOARD_MODEM_TYPE := xmm6262

# Inherit common board flags
-include device/samsung/smdk5260-common/BoardConfigCommon.mk
