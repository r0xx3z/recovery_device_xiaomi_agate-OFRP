# Copyright (C) 2025-2026 OrangeFox Recovery Project
# Copyright (C) 2026 chickendrop89
# SPDX-License-Identifier: GPL-3.0-only

FDEVICE="agate"
#set -o xtrace

fox_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep -w $FDEVICE)
   if [ -n "$chkdev" ]; then 
      FOX_BUILD_DEVICE="$FDEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep -w $FDEVICE)
      [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
   fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
   fox_get_target_device
fi

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then

# Build
export TW_DEFAULT_LANGUAGE="en"
export LC_ALL="C"
export ALLOW_MISSING_DEPENDENCIES=true

# Partitions
export FOX_RECOVERY_HAS_DYNAMIC_PARTITIONS=1
export FOX_RECOVERY_A_B_DEVICE=1

export FOX_SETTINGS_ROOT_DIRECTORY="/cache"
export FOX_MISCELLANEOUS_ROOT_DIRECTORY="/cache"

# Screen Settings
export OF_SCREEN_H="2400"
export OF_SCREEN_W="1080"

# Binaries & Tools
export FOX_USE_BUSYBOX_BINARY=1
export FOX_USE_NANO_EDITOR=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_SED_BINARY=1
export FOX_USE_XZ_UTILS=1
export FOX_USE_BASH_SHELL=1
export FOX_ASH_IS_BASH=1
export OF_ENABLE_FS_COMPRESSION="1"
export FOX_ENABLE_APP_MANAGER=1
export OF_ENABLE_FRP_ADDON="1"
export FOX_DELETE_AROMAFM=1

# KernelSU-Next / SukiSu support
export FOX_ENABLE_KERNELSU_NEXT_SUPPORT=1
export FOX_ENABLE_SUKISU_SUPPORT=1

# Magisk & Boot Patching
export FOX_USE_SPECIFIC_MAGISK_ZIP=~/Magisk/Magisk-v30.7.zip
export OF_USE_MAGISKBOOT="1"
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES="1"
export OF_DONT_PATCH_ENCRYPTED_DEVICE="1"

# MIUI & HyperOS Support
export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES="1"
export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR="1"
export OF_DISABLE_MIUI_OTA_BY_DEFAULT="0"
export OF_NO_MIUI_PATCH_WARNING="1"
export OF_NO_TREBLE_COMPATIBILITY_CHECK="1"
	
# Maintainer & Build Info
export FOX_BUILD_TYPE="Testing"
export FOX_MAINTAINER_PATCH_VERSION="1"
export OF_MAINTAINER="Llorens"
	
	if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
  	   export | grep "FOX" >> $FOX_BUILD_LOG_FILE
  	   export | grep "OF_" >> $FOX_BUILD_LOG_FILE
   	   export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
  	   export | grep "TW_" >> $FOX_BUILD_LOG_FILE
 	fi
fi
