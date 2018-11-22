LOCAL_PATH := $(call my-dir)

## libshim_cam
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	libshim_cam.cpp

LOCAL_SHARED_LIBRARIES := \
	libui

LOCAL_MODULE := libshim_cam
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)
