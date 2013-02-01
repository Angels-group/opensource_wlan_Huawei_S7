ifneq (,$(findstring bcm43,$(BOARD_WLAN_DEVICE)))
    include $(call all-subdir-makefiles)
endif
