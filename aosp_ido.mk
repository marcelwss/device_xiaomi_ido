#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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
$(call inherit-product, device/xiaomi/ido/full_ido.mk)

# Inherit some common AOSP stuff.
TARGET_ARCH := arm64
TARGET_DENSITY := xhdpi
TARGET_BOOT_ANIMATION_RES := 720
TARGET_INCLUDE_ARCORE := true
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ido
PRODUCT_NAME := aosp_ido
PRODUCT_BRAND := xiaomi
PRODUCT_MANUFACTURER := xiaomi

# Build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Xiaomi/ido/ido:5.1.1/LMY47V/V8.1.3.0.LAIMIDI:user/release-keys" \
    PRIVATE_BUILD_DESC="ido-user 5.1.1 LMY47V V8.1.3.0.LAIMIDI release-keys"
