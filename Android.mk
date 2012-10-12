
ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),c8812)
include $(call all-named-subdir-makefiles, libcamera liblights libaudio libril )
endif
