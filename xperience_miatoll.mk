#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lavender device
$(call inherit-product,  device/xiaomi/miatoll/device.mk)

# Inherit some common XPerience stuff.
$(call inherit-product, vendor/xperience/config/common_full_phone.mk)

#CAF prop CAF includes
include device/qcom/common/common.mk

PRODUCT_NAME := xperience_miatoll
PRODUCT_DEVICE := miatoll
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := SM6250
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
