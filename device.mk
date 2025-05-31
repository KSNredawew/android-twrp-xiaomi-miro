# Inherit from common device configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from TWRP common configurations
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := miro
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := POCO F7 Ultra
PRODUCT_NAME := twrp_miro
PRODUCT_SYSTEM_NAME := miro_global

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    device/xiaomi/miro \
    hardware/xiaomi

# Fastbootd
PRODUCT_PACKAGES += \
    fastbootd \
    android.hardware.fastboot@1.0-impl-mock

# Recovery modules
PRODUCT_HOST_PACKAGES += \
    libandroidicu

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    libhidltransport \
    libhwbinder

# OEM otacert
PRODUCT_EXTRA_RECOVERY_KEYS += \
    device/xiaomi/miro/releasekey

# Decryption
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Display
PRODUCT_PACKAGES += \
    libdisplayconfig.qti \
    vendor.display.config@1.0 \
    vendor.display.config@2.0

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Vibrator
PRODUCT_PACKAGES += \
    vendor.qti.hardware.vibrator.service

# Power
PRODUCT_PACKAGES += \
    android.hardware.power-service-qti \
    android.hardware.power@1.2.vendor

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@2.0-service.qti

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.3-service-qti

# Graphics
PRODUCT_PACKAGES += \
    android.hardware.graphics.composer@2.4-service \
    android.hardware.graphics.mapper@4.0-impl-qti-display

# Neural Networks
PRODUCT_PACKAGES += \
    android.hardware.neuralnetworks@1.3.vendor

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-service_64

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm-service.clearkey \
    android.hardware.drm@1.4.vendor

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.1.vendor

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0.vendor

# Boot control
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl-qti \
    android.hardware.boot@1.2-impl-qti.recovery \
    android.hardware.boot@1.2-service

# Additional target properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.twrp.build.device=miro \
    ro.product.first_api_level=34 \
    ro.hardware.egl=adreno \
    ro.hardware.vulkan=adreno \
    ro.opengles.version=196610

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 34

# Product characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="miro-user 15 UKQ1.230804.001 V2.0.106.0.VOMMIXM release-keys"

BUILD_FINGERPRINT := "Xiaomi/miro_global/miro:15/UKQ1.230804.001/V2.0.106.0.VOMMIXM:user/release-keys"
