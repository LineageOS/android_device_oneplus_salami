#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from salami device
$(call inherit-product, device/oneplus/salami/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_salami
PRODUCT_DEVICE := salami
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2449

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="CPH2449EEA-user 14 TP1A.220905.001 T.R4T3.1a1ad1b_1-6 release-keys" \
    BuildFingerprint=OnePlus/CPH2449EEA/OP594DL1:14/TP1A.220905.001/T.R4T3.1a1ad1b_1-6:user/release-keys \
    DeviceName=OP594DL1 \
    DeviceProduct=CPH2449 \
    SystemDevice=OP594DL1 \
    SystemName=CPH2449
