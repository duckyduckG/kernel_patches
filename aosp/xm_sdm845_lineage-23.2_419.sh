#!/bin/bash

# remove device trees
rm -rf device/xiaomi/beryllium
rm -rf device/xiaomi/dipper
rm -rf device/xiaomi/equuleus
rm -rf device/xiaomi/perseus
rm -rf device/xiaomi/polaris
rm -rf device/xiaomi/sdm845-common
# remove vendor
rm -rf vendor/xiaomi/beryllium
rm -rf vendor/xiaomi/dipper
rm -rf vendor/xiaomi/equuleus
rm -rf vendor/xiaomi/perseus
rm -rf vendor/xiaomi/polaris
rm -rf vendor/xiaomi/sdm845-common
# remove kernel
rm -rf kernel/xiaomi/sdm845
# remove hardware
rm -rf hardware/xiaomi
# remove hals
rm -rf hardware/qcom-caf/sm8250/media
rm -rf hardware/qcom-caf/sm8250/audio
rm -rf hardware/qcom-caf/sm8250/display
# remove sepolicy
rm -rf device/lineage/sepolicy
rm -rf device/qcom/sepolicy_vndr/legacy-um
# common
rm -rf hardware/qcom-caf/common

# Clone repositories #

# Device tree - beryllium
git clone https://github.com/duckyduckG/android_device_xiaomi_beryllium_419.git -b lineage-23.2 device/xiaomi/beryllium
# Device tree - dipper
git clone https://github.com/duckyduckG/android_device_xiaomi_dipper_419.git -b lineage-23.2 device/xiaomi/dipper
# Device tree - equuleus
git clone https://github.com/duckyduckG/android_device_xiaomi_equuleus_419.git -b lineage-23.2 device/xiaomi/equuleus
# Device tree - perseus
git clone https://github.com/duckyduckG/android_device_xiaomi_perseus_419.git -b lineage-23.2 device/xiaomi/perseus
# Device tree - polaris
git clone https://github.com/duckyduckG/android_device_xiaomi_polaris_419.git -b lineage-23.2 device/xiaomi/polaris
# Device tree - sdm845-common
git clone https://github.com/duckyduckG/android_device_xiaomi_sdm845-common_419.git -b lineage-23.2 device/xiaomi/sdm845-common

# Vendor - beryllium
git clone https://github.com/duckyduckG/android_vendor_xiaomi_beryllium_419.git -b lineage-23.2 vendor/xiaomi/beryllium
# Vendor - dipper
git clone https://github.com/duckyduckG/proprietary_vendor_xiaomi_dipper_419.git -b lineage-23.2 vendor/xiaomi/dipper
# Vendor - equuleus
git clone https://github.com/duckyduckG/proprietary_vendor_xiaomi_equuleus_419.git -b lineage-23.2 vendor/xiaomi/equuleus
# Vendor - perseus
git clone https://github.com/duckyduckG/proprietary_vendor_xiaomi_perseus_419.git -b lineage-23.2 vendor/xiaomi/perseus
# Vendor - polaris
git clone https://github.com/duckyduckG/proprietary_vendor_xiaomi_polaris_419.git -b lineage-23.2 vendor/xiaomi/polaris
# Vendor - sdm845-common
git clone https://github.com/duckyduckG/android_vendor_xiaomi_sdm845-common_419.git -b lineage-23.2 vendor/xiaomi/sdm845-common

# Kernel
git clone https://github.com/duckyduckG/android_kernel_xiaomi_sdm845_419.git -b lineage-23.2_xiaomi kernel/xiaomi/sdm845

# Hardware
git clone https://github.com/LineageOS/android_hardware_xiaomi.git -b lineage-23.2 hardware/xiaomi

# Hals
git clone https://github.com/duckyduckG/android_hardware_qcom_media.git -b lineage-23.1-caf-sm8150 hardware/qcom-caf/sm8250/media
git clone https://github.com/duckyduckG/android_hardware_qcom_audio.git -b lineage-23.2-caf-sm8250 hardware/qcom-caf/sm8250/audio
git clone https://github.com/duckyduckG/android_hardware_qcom_display.git -b lineage-23.2-caf-sm8250 hardware/qcom-caf/sm8250/display

# Sepolicy
git clone https://github.com/duckyduckG/android_device_lineage_sepolicy.git -b lineage-23.2 device/lineage/sepolicy
git clone https://github.com/duckyduckG/android_device_qcom_sepolicy_vndr.git -b lineage-23.2-legacy-um device/qcom/sepolicy_vndr/legacy-um

# qcom-caf_common
git clone https://github.com/duckyduckG/android_hardware_qcom-caf_common.git -b lineage-23.2 hardware/qcom-caf/common
