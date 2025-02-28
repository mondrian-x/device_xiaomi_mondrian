#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mondrian device
$(call inherit-product, device/xiaomi/mondrian/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_mondrian
PRODUCT_DEVICE := mondrian
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 23013PC75G

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="mondrian_global-user 14 UKQ1.230804.001 V816.0.10.0.UMNMIXM release-keys" \
    BuildFingerprint=POCO/mondrian_global/mondrian:14/UKQ1.230804.001/V816.0.10.0.UMNMIXM:user/release-keys \
    DeviceProduct=mondrian \
    SystemName=mondrian_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Mistification
PRODUCT_NO_CAMERA := true
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true

TARGET_ENABLE_BLUR := true
TARGET_BOOT_ANIMATION_RES := 1440

TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# Gapps
WITH_GMS := true

# Maintainer
MISTOS_MAINTAINER="Xenogenesys"
