#
# Copyright 2016 The Android Open Source Project
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
#

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := 560dpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

PRODUCT_HARDWARE := sargo

include device/google/bonito/device-common.mk

DEVICE_PACKAGE_OVERLAYS += device/google/bonito/sargo/overlay

PRODUCT_COPY_FILES += \
    device/google/bonito/nfc/libnfc-nxp.sargo.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += ro.com.google.ime.height_ratio=1.2

# Vibrator HAL
PRODUCT_SYSTEM_DEFAULT_PROPERTIES +=\
    ro.vibrator.hal.click.duration=6 \
    ro.vibrator.hal.tick.duration=2 \
    ro.vibrator.hal.heavyclick.duration=10

# DRV2624 Haptics Waveform
PRODUCT_COPY_FILES += \
    device/google/bonito/vibrator/drv2624/drv2624_S4.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/drv2624.bin
