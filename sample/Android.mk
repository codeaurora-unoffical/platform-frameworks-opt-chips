# Copyright (C) 2013 The Android Open Source Project
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

LOCAL_PATH:= $(call my-dir)

##################################################
# Build APK
include $(CLEAR_VARS)

src_dirs := src
LOCAL_PACKAGE_NAME := libChipsSample

LOCAL_STATIC_JAVA_LIBRARIES := \
     androidx.annotation_annotation

LOCAL_STATIC_ANDROID_LIBRARIES := \
     libchips \
     androidx.core_core

LOCAL_SDK_VERSION := current

LOCAL_SRC_FILES := $(call all-java-files-under, src) \
        $(call all-logtags-files-under, $(src_dirs))
LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res
LOCAL_USE_AAPT2 := true

include $(BUILD_PACKAGE)


##################################################
# Build all sub-directories

include $(call all-makefiles-under,$(LOCAL_PATH))
