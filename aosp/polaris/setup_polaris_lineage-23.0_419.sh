#!/bin/bash

# remove device trees
rm -rf device/xiaomi/polaris
rm -rf device/xiaomi/sdm845-common
# remove vendor
rm -rf vendor/xiaomi/polaris
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
# common
rm -rf hardware/qcom-caf/common

# Clone repositories #

# Device tree - polaris
git clone https://github.com/duckyduckG/android_device_xiaomi_polaris_419.git -b lineage-22.2 device/xiaomi/polaris
# Device tree - sdm845-common
git clone https://github.com/duckyduckG/android_device_xiaomi_sdm845-common_419.git -b lineage-23.0 device/xiaomi/sdm845-common

# Vendor - polaris
git clone https://github.com/duckyduckG/proprietary_vendor_xiaomi_polaris_419.git -b lineage-22.2 vendor/xiaomi/polaris
# Vendor - sdm845-common
git clone https://github.com/duckyduckG/android_vendor_xiaomi_sdm845-common_419.git -b lineage-23.0 vendor/xiaomi/sdm845-common

# Kernel
git clone https://github.com/duckyduckG/android_kernel_xiaomi_sdm845_419.git -b lineage-23.0_xiaomi kernel/xiaomi/sdm845

# Hardware
git clone https://github.com/duckyduckG/android_hardware_xiaomi.git -b lineage-23.0 hardware/xiaomi

# Hals
git clone https://github.com/duckyduckG/android_hardware_qcom_media.git -b lineage-23.0-caf-sm8150 hardware/qcom-caf/sdm845/media
git clone https://github.com/duckyduckG/android_hardware_qcom_audio.git -b lineage-23.0-caf-sm8250 hardware/qcom-caf/sdm845/audio
git clone https://github.com/duckyduckG/android_hardware_qcom_display.git -b lineage-23.0-caf-sm8250 hardware/qcom-caf/sdm845/display

# Sepolicy
git clone https://github.com/duckyduckG/android_device_lineage_sepolicy.git -b lineage-23.0 device/lineage/sepolicy
git clone https://github.com/duckyduckG/android_device_qcom_sepolicy_vndr.git -b lineage-23.0-legacy-um device/qcom/sepolicy_vndr/legacy-um

# qcom-caf_common
git clone https://github.com/duckyduckG/android_hardware_qcom-caf_common.git -b lineage-23.0 hardware/qcom-caf/common
