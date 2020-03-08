# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
# Copyright (C) 2020 Prism
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

# Inherit from the AOSP configuration.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the custom device configuration.
$(call inherit-product, device/oneplus/oneplus3/device.mk)

# Inherit from the custom ROM configuration.
$(call inherit-product, vendor/custom/config/common.mk)
$(call inherit-product, vendor/custom/config/gsm.mk)
$(call inherit-product, vendor/pixelgapps/pixel-gapps.mk)

# GApps
TARGET_PIXEL_SETUP_OVERLAY_TYPEL := P1
TARGET_SUPPORTS_GOOGLE_ASSISTANT_EXTRA_RESOURCES := true
TARGET_SUPPORTS_GOOGLE_WALLS := true
TARGET_SUPPORTS_PIXEL_SETUP_OVERLAYS := true

PRODUCT_NAME := prism_oneplus3
PRODUCT_DEVICE := oneplus3
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

TARGET_VENDOR := oneplus
