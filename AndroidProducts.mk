#
# Copyright (C) 2024 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
#


PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/twrp_miro.mk


COMMON_LUNCH_CHOICES := \
    twrp_miro-eng \
    twrp_miro-userdebug \
    twrp_miro-user


$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)


PRODUCT_CHARACTERISTICS := nosdcard


PRODUCT_LOCALES := ru_RU en_US


TWRP_VERSION := 3.7.1_1


PRODUCT_USE_DYNAMIC_PARTITIONS := true


PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_RELEASE_NAME := miro


PRODUCT_MODEL := POCO F7 Ultra
PRODUCT_DEVICE := miro
PRODUCT_NAME := twrp_miro


PRODUCT_BUILD_SUPER_PARTITION := true
PRODUCT_SUPER_PARTITION_SIZE := 9126805504
PRODUCT_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
PRODUCT_QTI_DYNAMIC_PARTITIONS_SIZE := 9122611200
PRODUCT_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext vendor product odm


$(call inherit-product, device/xiaomi/miro/device.mk)
$(call inherit-product, vendor/twrp/config/common.mk)


PRODUCT_PROPERTY_OVERRIDES += \
    ro.twrp.device=miro \
    ro.twrp.version=$(TWRP_VERSION)
