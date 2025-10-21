#!/bin/bash

# remove device trees
rm -rf device/xiaomi/perseus
rm -rf device/xiaomi/sdm845-common
# remove vendor
rm -rf vendor/xiaomi/perseus
rm -rf vendor/xiaomi/sdm845-common
# remove kernel
rm -rf kernel/xiaomi/sdm845
# remove hardware
rm -rf hardware/xiaomi
# remove hals
rm -rf hardware/qcom-caf/sdm845/media
rm -rf hardware/qcom-caf/sdm845/audio
rm -rf hardware/qcom-caf/sdm845/display
# remove sepolicy
rm -rf device/lineage/sepolicy
rm -rf device/qcom/sepolicy_vndr/legacy-um

# Clone repositories #

# Device tree - perseus
git clone https://github.com/duckyduckG/android_device_xiaomi_perseus_419.git -b lineage-22.2 device/xiaomi/perseus
# Device tree - sdm845-common
git clone https://github.com/duckyduckG/android_device_xiaomi_sdm845-common_419.git -b lineage-22.2 device/xiaomi/sdm845-common

# Vendor - perseus
git clone https://github.com/duckyduckG/proprietary_vendor_xiaomi_perseus_419.git -b lineage-22.2 vendor/xiaomi/perseus
# Vendor - sdm845-common
git clone https://github.com/duckyduckG/android_vendor_xiaomi_sdm845-common_419.git -b lineage-22.2 vendor/xiaomi/sdm845-common

# Kernel
git clone https://github.com/duckyduckG/android_kernel_xiaomi_sdm845_419.git -b perf kernel/xiaomi/sdm845
# kernel device tree
git clone https://github.com/duckyduckG/devicetree_xiaomi_419.git kernel/xiaomi/sdm845/arch/arm64/boot/dts/xiaomi
git clone https://github.com/duckyduckG/devicetree_qcom-sdm845_419.git kernel/xiaomi/sdm845/arch/arm64/boot/dts/qcom-sdm845
# kernel techpack
git clone https://github.com/duckyduckG/kernel_techpack_mi845_419.git kernel/xiaomi/sdm845/techpack/mi845

# Hardware
git clone https://github.com/duckyduckG/android_hardware_xiaomi.git -b lineage-22.2 hardware/xiaomi

# Hals
git clone https://github.com/duckyduckG/android_hardware_qcom_media.git -b lineage-22.2-caf-sm8150 hardware/qcom-caf/sdm845/media
git clone https://github.com/duckyduckG/android_hardware_qcom_audio.git -b lineage-22.2-caf-sm8250 hardware/qcom-caf/sdm845/audio
## NEW display hal with BP sht is broken, so using old one
git clone https://github.com/duckyduckG/display.git hardware/qcom-caf/sdm845/display
## NEW display hal with BP sht is broken, so using old one

# Sepolicy
git clone https://github.com/duckyduckG/android_device_lineage_sepolicy.git -b lineage-22.2 device/lineage/sepolicy
git clone https://github.com/duckyduckG/android_device_qcom_sepolicy_vndr.git -b lineage-22.2-legacy-um device/qcom/sepolicy_vndr/legacy-um
