# Inherit from common TWRP configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier
PRODUCT_DEVICE := miro
PRODUCT_NAME := twrp_miro
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := POCO F7 Ultra/Redmi K80 Pro
PRODUCT_MANUFACTURER := Xiaomi

# Fastbootd support
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Crypto
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Soong
PRODUCT_SOONG_NAMESPACES += \
    device/xiaomi/miro

# Resolution
TW_THEME := portrait_hdpi
DEVICE_SCREEN_WIDTH := 1440
DEVICE_SCREEN_HEIGHT := 3200
TARGET_SCREEN_DENSITY := 560

# Display
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_MAX_BRIGHTNESS := 4050
TW_DEFAULT_BRIGHTNESS := 2048
TW_NO_SCREEN_BLANK := true
TW_NO_SCREEN_TIMEOUT := true

# CPU
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a-dotprod
TARGET_CPU_VARIANT := cortex-X4
TARGET_CPU_ABI := arm64-v8a

# GPU
TW_HAS_EXTRA_GPU_CHIP := true
TW_EXTRA_GPU_NAME := visionboost_d7

# Storage
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_FUSE_EXFAT := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_REPACKTOOLS := true

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
BOARD_USES_METADATA_PARTITION := true

# Recovery
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_PREBUILT_KERNEL := device/xiaomi/miro/prebuilt/kernel
BOARD_KERNEL_CMDLINE := \
    console=ttyMSM0,115200n8 \
    androidboot.hardware=qcom \
    androidboot.console=ttyMSM0 \
    androidboot.memcg=1 \
    lpm_levels.sleep_disabled=1 \
    video=vfb:640x400,bpp=32,memsize=3072000 \
    msm_rtb.filter=0x237 \
    service_locator.enable=1 \
    androidboot.usbcontroller=a600000.dwc3 \
    swiotlb=2048 \
    loop.max_part=7 \
    cgroup.memory=nokmem,nosocket \
    reboot=panic_warm

BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET := 0x02000000

# AVB
BOARD_AVB_ENABLE := true
BOARD_AVB_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)

# Security patch level
VENDOR_SECURITY_PATCH := 2024-05-05

# TWRP specific build flags
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TW_EXCLUDE_TWRPAPP := true
TW_HAS_EDL_MODE := true
TW_SUPPORT_INPUT_AIDL_HAPTICS := true
TW_USE_SERIALNO_PROPERTY_FOR_DEVICE_ID := true
TW_LOAD_VENDOR_MODULES := "adsp_loader_dlkm.ko msm_drm.ko qti_battery_charger.ko"
TW_CUSTOM_CPU_TEMP_PATH := "/sys/class/thermal/thermal_zone50/temp"
TW_BACKUP_EXCLUSIONS := /data/fonts
