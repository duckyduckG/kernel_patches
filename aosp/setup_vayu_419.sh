#!/bin/bash

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
# Clone repositories #

# remove hals
rm -rf hardware/qcom-caf/sm8150/media
rm -rf hardware/qcom-caf/sm8150/audio
rm -rf hardware/qcom-caf/sm8150/display

# Device tree - vayu
git clone https://github.com/duckyduckG/android_device_xiaomi_vayu_419.git -b lineage-22.2 device/xiaomi/vayu
# Device tree - sm8150-common
git clone https://github.com/duckyduckG/android_device_xiaomi_sm8150-common_419.git -b lineage-22.2 device/xiaomi/sm8150-common

# Vendor - vayu
git clone https://github.com/duckyduckG/proprietary_vendor_xiaomi_vayu_419.git -b lineage-22.2 vendor/xiaomi/vayu
# Vendor - sm8150-common
git clone https://github.com/duckyduckG/proprietary_vendor_xiaomi_sm8150-common_419.git -b lineage-22.2 vendor/xiaomi/sm8150-common

# Kernel
git clone https://github.com/duckyduckG/android_kernel_xiaomi_sm8150_419.git -b SM8150-419-T-AUDIO kernel/xiaomi/sm8150
# kernel device tree
git clone https://github.com/duckyduckG/devicetree_xiaomi_sm8150_419.git kernel/xiaomi/sm8150/arch/arm64/boot/dts/xiaomi
git clone https://github.com/duckyduckG/devicetree_qcom-sm8150_419.git kernel/xiaomi/sm8150/arch/arm64/boot/dts/qcom-sm8150

# Hardware
git clone https://github.com/duckyduckG/android_hardware_xiaomi.git -b lineage-22.2 hardware/xiaomi

# Hals
git clone https://github.com/duckyduckG/android_hardware_qcom_audio.git -b lineage-22.2-caf-sm8250 hardware/qcom-caf/sm8150/audio
# media
git clone https://github.com/duckyduckG/android_hardware_qcom_media.git -b lineage-22.2-caf-sm8150-419 hardware/qcom-caf/sm8150/media
# display
git clone https://github.com/duckyduckG/android_hardware_qcom_display.git -b lineage-22.2-caf-sm8150-419 hardware/qcom-caf/sm8150/display
