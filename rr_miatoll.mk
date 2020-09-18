#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/miatoll/device.mk)
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080
#WITH_GAPPS := true
#TARGET_GAPPS_ARCH := arm64
#TARGET_INCLUDE_WIFI_EXT := true
#TARGET_INCLUDE_STOCK_ARCORE := true
#TARGET_SUPPORTS_GOOGLE_RECORDER := true

TARGET_FACE_UNLOCK_SUPPORTED := true

PRODUCT_NAME := rr_miatoll
PRODUCT_DEVICE := miatoll
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := SM6250
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Zygote
PRODUCT_PROPERTY_OVERRIDES += \
    persist.device_config.runtime_native.usap_pool_enabled=true
