# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from custom device configuration.
$(call inherit-product, device/oneplus/oneplus3/device.mk)

# Inherit some common Descendant stuff.
$(call inherit-product, vendor/descendant/config/common_full_phone.mk)

# Descendant GApps
PIXEL_SETUP_OVERLAY_TYPE := PIXELONE
SUPPORTS_GOOGLE_ASSISTANT_EXTRA_RESOURCES := true
SUPPORTS_GOOGLE_WALLS := true
SUPPORTS_PIXEL_SETUP_OVERLAY := true
TARGET_INCLUDE_STOCK_ARCORE := NO

PRODUCT_NAME := descendant_oneplus3
PRODUCT_DEVICE := oneplus3
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

BUILD_FINGERPRINT := "OnePlus/OnePlus3/OnePlus3:9/PKQ1.181203.001/1907311932:user/release-keys"

TARGET_VENDOR := oneplus
