#
# Copyright 2018 The Android Open Source Project
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

# Platform
DEVICE_CODENAME := a6plte
DEVICE_PATH := device/samsung/$(DEVICE_CODENAME)
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := msm8953
TARGET_BOARD_PLATFORM_GPU := qcom-adreno506
TARGET_SOC := sdm450

TARGET_BOOTLOADER_BOARD_NAME := msm8953
TARGET_NO_BOOTLOADER := true

TARGET_NO_RADIOIMAGE := true
TARGET_USES_UEFI := true

LOCAL_PATH := device/samsung/$(DEVICE_CODENAME)

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a53
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := $(TARGET_CPU_VARIANT)
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53
TARGET_USES_64_BIT_BINDER := true

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Release related flags
PLATFORM_VERSION := 10
PLATFORM_SECURITY_PATCH := 2022-06-01

# Kernel
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/Image.gz-dtb
TARGET_KERNEL_APPEND_DTB := true
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/seEnforcing.mk

BOARD_KERNEL_CMDLINE := \
    console=null \
    androidboot.hardware=qcom \
    msm_rtb.filter=0x237 \
    ehci-hcd.park=3 \
    androidboot.bootdevice=7824900.sdhci \
    lpm_levels.sleep_disabled=1 \
	service_locator.enable=1
#

BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := \
    --board SRPRB26B003RU \
    --kernel_offset 0x00008000 \
    --ramdisk_offset 0x02000000 \
    --second_offset 0x00F00000 \
    --tags_offset 0x01E00000 \
    --header_version 0
#

#BOARD_SEPOLICY_VERS := current

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_DTBOIMG_PARTITION_SIZE := 2097152
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3313500160
#BOARD_VENDORIMAGE_PARTITION_SIZE := 503316480
#BOARD_ODMIMAGE_PARTITION_SIZE := 377487360
#BOARD_CACHEIMAGE_PARTITION_SIZE := 314572800
#BOARD_HIDDENIMAGE_PARTITION_SIZE := 5242880
#BOARD_OMRIMAGE_PARTITION_SIZE := 20971520
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 57641250816

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_NO_REAL_SDCARD := true
TARGET_USES_MKE2FS := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_ODM := odm
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_PRODUCT := product
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Encryption
BOARD_USES_QCOM_DECRYPTION := true
#BOARD_USES_QCOM_FBE_DECRYPTION := true
#BOARD_USES_METADATA_PARTITION := true

# Android Verified Boot
BOARD_AVB_ENABLE := false
#BOARD_BUILD_DISABLED_VBMETAIMAGE := true

# Crypto
TARGET_KEYMASTER_WAIT_FOR_QSEE := true
TW_INCLUDE_CRYPTO := true

# Recovery
RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi
TARGET_OTA_ASSERT_DEVICE := a6plte
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery.fstab
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/virtual/thermal/thermal_zone23/temp"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 150
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_NTFS_3G := true
TW_EXCLUDE_SUPERSU := true
TW_USE_NEW_MINADBD := true
TW_EXTRA_LANGUAGES := true
TW_INPUT_BLACKLIST := "hbtp_vm"
#TW_INPUT_BLACKLIST := "sec_e-pen-pad"
#TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_MTP_DEVICE := "/dev/mtp_usb"

TWHAVE_SELINUX := true
TWRP_INCLUDE_LOGCAT := true

ALLOW_MISSING_DEPENDENCIES := true

