#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/configs/audio/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 2376
TARGET_SCREEN_WIDTH := 1080

# Display
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/display_id_4630946342906530435.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630946342906530435.xml

# Fingerprint
$(call soong_config_set,surfaceflinger,udfps_lib,//hardware/oplus:libudfps_extension.oplus)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage

PRODUCT_PACKAGES += \
    OPlusFrameworksResTarget \
    OPlusSettingsProviderResTarget \
    OPlusSettingsResTarget \
    OPlusSystemUIResTarget

# Regional properties
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/vendor/odm/etc/22811/build.default.prop:$(TARGET_COPY_OUT_ODM)/etc/22811/build.default.prop \
    $(LOCAL_PATH)/recovery/root/vendor/odm/etc/22861/build.EU.prop:$(TARGET_COPY_OUT_ODM)/etc/22861/build.EU.prop \
    $(LOCAL_PATH)/recovery/root/vendor/odm/etc/22861/build.IN.prop:$(TARGET_COPY_OUT_ODM)/etc/22861/build.IN.prop \
    $(LOCAL_PATH)/recovery/root/vendor/odm/etc/22861/build.NA.prop:$(TARGET_COPY_OUT_ODM)/etc/22861/build.NA.prop \
    $(LOCAL_PATH)/recovery/root/vendor/odm/etc/22861/build.default.prop:$(TARGET_COPY_OUT_ODM)/etc/22861/build.default.prop

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator.service.oplus-richtap

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/oneplus/sm8550-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/oneplus/salami/salami-vendor.mk)
