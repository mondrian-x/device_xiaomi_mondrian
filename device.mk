#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8450-common
$(call inherit-product, device/xiaomi/sm8450-common/common.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/mondrian/mondrian-vendor.mk)

# Inherit from miuicamera-mondrian
$(call inherit-product-if-exists, device/xiaomi/miuicamera-mondrian/device.mk)

# Overlay
PRODUCT_PACKAGES += \
    ApertureResMondrian \
    FrameworksResMondrian \
    FrameworksResMondrianGlobal \
    LineageResMondrian \
    NfcResMondrian \
    SettingsProviderResMondrian \
    SettingsProviderResMondrianCN \
    SettingsResMondrian \
    SystemUIResMondrian \
    WifiResMondrian \
    WifiResMondrianCN

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# System properties
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/properties/build_CN.prop:$(TARGET_COPY_OUT_ODM)/etc/build_CN.prop \
    $(LOCAL_PATH)/properties/build_GL.prop:$(TARGET_COPY_OUT_ODM)/etc/build_GL.prop

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/properties/build_CN.prop:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/odm/etc/build_CN.prop \
    $(LOCAL_PATH)/properties/build_GL.prop:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/odm/etc/build_GL.prop
