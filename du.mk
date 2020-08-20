#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/miatoll/device.mk)

# Inherit some common DU stuff
$(call inherit-product, vendor/du/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080
WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_WIFI_EXT := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

BOARD_USES_CAF_LIBJSON := true

PRODUCT_NAME := du_miatoll
PRODUCT_DEVICE := miatoll
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := SM6250
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

$(call inherit-product-if-exists, vendor/pixelgapps/pixel-gapps.mk)
