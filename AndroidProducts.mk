#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/du.mk \
    $(LOCAL_DIR)/lineage_miatoll.mk

#PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/rr_miatoll.mk


#COMMON_LUNCH_CHOICES := \
    du_miatoll-user \
    du_miatoll-userdebug \
    du_miatoll-eng \
    rr_miatoll-user \
    rr_miatoll-userdebug \
    rr_miatoll-eng \
    lineage_miatoll-user \
    lineage_miatoll-userdebug \
    lineage_miatoll-eng

#COMMON_LUNCH_CHOICES := \
    rr_miatoll-user \
    rr_miatoll-userdebug \
    rr_miatoll-eng

COMMON_LUNCH_CHOICES := \
    du_miatoll-user \
    du_miatoll-userdebug \
    du_miatoll-eng
