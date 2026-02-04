#!/bin/bash

# remove old start #
# remove device trees
rm -rf device/xiaomi/vayu
rm -rf device/xiaomi/sm8150-common
# remove vendor
rm -rf vendor/xiaomi/vayu
rm -rf vendor/xiaomi/sm8150-common
# remove kernel
rm -rf kernel/xiaomi/sm8150
# remove hardware
rm -rf hardware/xiaomi
# remove hals
rm -rf hardware/qcom-caf/sm8150/media
rm -rf hardware/qcom-caf/sm8150/audio
rm -rf hardware/qcom-caf/sm8150/display
# common
rm -rf hardware/qcom-caf/common
# remove old end #

# Clone repositories start #
# Device tree - vayu
git clone https://github.com/duckyduckG/android_device_xiaomi_vayu_419.git -b lineage-23.2 device/xiaomi/vayu
# Device tree - sm8150-common
git clone https://github.com/duckyduckG/android_device_xiaomi_sm8150-common_419.git -b lineage-23.2 device/xiaomi/sm8150-common

# Vendor - vayu
git clone https://github.com/duckyduckG/proprietary_vendor_xiaomi_vayu_419.git -b lineage-23.2 vendor/xiaomi/vayu
# Vendor - sm8150-common
git clone https://github.com/duckyduckG/proprietary_vendor_xiaomi_sm8150-common_419.git -b lineage-23.2 vendor/xiaomi/sm8150-common

# Kernel
git clone https://github.com/duckyduckG/android_kernel_xiaomi_sm8150_419.git -b lineage-23.0_vayu kernel/xiaomi/sm8150

# Hardware
git clone https://github.com/LineageOS/android_hardware_xiaomi.git -b lineage-23.2 hardware/xiaomi

# Hals
git clone https://github.com/duckyduckG/android_hardware_qcom_audio.git -b lineage-23.2-caf-sm8250 hardware/qcom-caf/sm8150/audio
# media
git clone https://github.com/duckyduckG/android_hardware_qcom_media.git -b lineage-23.0-caf-sm8150-419 hardware/qcom-caf/sm8150/media
# display
git clone https://github.com/duckyduckG/android_hardware_qcom_display.git -b lineage-23.2-caf-sm8250 hardware/qcom-caf/sm8150/display
# qcom-caf_common
git clone https://github.com/duckyduckG/android_hardware_qcom-caf_common.git -b lineage-23.2 hardware/qcom-caf/common
# Clone repositories end #
