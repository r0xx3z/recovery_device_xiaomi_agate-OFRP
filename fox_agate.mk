#
#	This file is part of the OrangeFox Recovery Project
# Copyright (C) 2023 The OrangeFox Recovery Project
#

# OrangeFox settings
OF_USE_GREEN_LED := 0
OF_ENABLE_USB_STORAGE := 1
OF_IGNORE_LOGICAL_MOUNT_ERRORS := 1

OF_BIND_MOUNT_SDCARD_ON_FORMAT := 1
OF_NO_TREBLE_COMPATIBILITY_CHECK := 1

OF_ENABLE_LPTOOLS := 1
OF_QUICK_BACKUP_LIST := /boot;/data;/dtbo;

# avb 2.0
OF_PATCH_AVB20 := 1

# OrangeFox GUI settings
OF_FLASHLIGHT_ENABLE := 1
OF_SCREEN_H := 2400
OF_STATUS_H := 100
OF_STATUS_INDENT_LEFT := 48
OF_STATUS_INDENT_RIGHT := 48
OF_CLOCK_POS := 1

# OTA (Modified for custom ROMs & Decryption)
OF_KEEP_DM_VERITY_FORCED_ENCRYPTION := 1
OF_KEEP_DM_VERITY := 0
OF_SUPPORT_ALL_BLOCK_OTA_UPDATES := 1
OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR := 1

# f2fs compression
OF_ENABLE_FS_COMPRESSION := 1

# Maximun permissible splash image size (in kilobytes); do "NOT" increase
OF_SPLASH_MAX_SIZE := "130"
