#
# Copyright (C) 2008 The Android Open Source Project
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
LOCAL_PATH := $(call my-dir)

########################

include $(CLEAR_VARS)
LOCAL_MODULE := wpa_supplicant.conf
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

########################

include $(CLEAR_VARS)
LOCAL_MODULE := dhcpcd.conf
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/dhcpcd
LOCAL_SRC_FILES := android_dhcpcd.conf
include $(BUILD_PREBUILT)

########################

####################################

include $(CLEAR_VARS)
LOCAL_MODULE := rtecdc-bcm4329.bin
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
ifeq ($(HUAWEI_SUPPORT_3C_WAPI), yes)
	LOCAL_SRC_FILES := sdio-g-cdc-full11n-reclaim-roml-wme-aoe-pktfilter-wapi-bcm4329.bin
else
	LOCAL_SRC_FILES := sdio-ag-cdc-full11n-reclaim-roml-wme-bcm4329.bin
endif
include $(BUILD_PREBUILT)

####################################

include $(CLEAR_VARS)
LOCAL_MODULE := rtecdc-bcm4319.bin
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
ifeq ($(HUAWEI_SUPPORT_3C_WAPI), yes)
	LOCAL_SRC_FILES := sdio-g-cdc-full11n-reclaim-roml-wme-wapi-bcm4319.bin
else
	LOCAL_SRC_FILES := sdio-g-cdc-full11n-reclaim-roml-wme-bcm4319.bin
endif
include $(BUILD_PREBUILT)

####################################
include $(CLEAR_VARS)
LOCAL_MODULE := rtecdc-apsta-bcm4329.bin
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := sdio-g-cdc-roml-reclaim-wme-apsta-idsup-idauth-minioctl-nocis_RT248_17-4329.bin
include $(BUILD_PREBUILT)

####################################
include $(CLEAR_VARS)
LOCAL_MODULE := rtecdc-apsta-bcm4319.bin
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := sdio-g-cdc-reclaim-roml-wme-apsta-idsup-idauth-minioctl-full11n-18-bcm4319b0.bin
include $(BUILD_PREBUILT)
########################

include $(CLEAR_VARS)
LOCAL_MODULE := nvram-bcm4329.txt
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := nvram-bcm4329.txt
include $(BUILD_PREBUILT)

########################

include $(CLEAR_VARS)
LOCAL_MODULE := nvram-bcm4319.txt
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := nvram-bcm4319.txt
include $(BUILD_PREBUILT)

########################

include $(CLEAR_VARS)
LOCAL_MODULE := rtecdc-mfgtest-bcm4319.bin
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := sdio-g-cdc-reclaim-roml-mfgtest-bcm4319.bin
include $(BUILD_PREBUILT)

########################

include $(CLEAR_VARS)
LOCAL_MODULE := nvram_mfgtest-bcm4319.txt
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := nvram_mfgtest-bcm4319.txt
include $(BUILD_PREBUILT)

########################

include $(CLEAR_VARS)
LOCAL_MODULE := rtecdc-mfgtest-bcm4329.bin
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := sdio-g-cdc-reclaim-roml-mfgtest-bcm4329.bin
include $(BUILD_PREBUILT)

########################

include $(CLEAR_VARS)
LOCAL_MODULE := nvram_mfgtest-bcm4329.txt
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := nvram_mfgtest-bcm4329.txt
include $(BUILD_PREBUILT)

########################

include $(CLEAR_VARS)
LOCAL_MODULE := wl
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT)/xbin
LOCAL_SRC_FILES := wlarm_android
include $(BUILD_PREBUILT)

########################

include $(CLEAR_VARS)
LOCAL_MODULE := iperf 
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT)/xbin
LOCAL_SRC_FILES := iperf
include $(BUILD_PREBUILT)

########################

########################
DIRS := $(addprefix $(TARGET_OUT_ETC)/, wifi) 
$(DIRS):
	@echo Directory: $@
	@mkdir -p $@
ALL_PREBUILT += $(DIRS)
########################

########################
DIRS := $(addprefix $(TARGET_OUT)/, xbin)
$(DIRS):
	@echo Directory: $@
	@mkdir -p $@
ALL_PREBUILT += $(DIRS)
########################


####################################
	
