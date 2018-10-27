LOCAL_PATH := $(call my-dir)

## libshim_cam
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	libshim_cam.cpp

LOCAL_SHARED_LIBRARIES := \
	libbinder \
	libui

LOCAL_MODULE := libshim_cam
LOCAL_CFLAGS := -O3 -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)


## libshim_gui
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	libshim_gui.cpp

LOCAL_SHARED_LIBRARIES := \
	libbinder \
	libgui \
	liblog \
	libui \
	libutils

LOCAL_MODULE := libshim_gui
LOCAL_CFLAGS := -O3 -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)


# libshim_ifc
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	libshim_ifc_netutils.c

LOCAL_SHARED_LIBRARIES := \
	libbinder \
	libcutils \
	liblog

LOCAL_MODULE := libshim_ifc
LOCAL_C_INCLUDES := system/core/libnetutils/include
LOCAL_CFLAGS := -O3 -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)


## libshim_pbb
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	libshim_pbb.cpp

LOCAL_MODULE := libshim_pbb
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_CFLAGS := -O3 -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)


## libshim_ui
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	libshim_ui.cpp

LOCAL_SHARED_LIBRARIES := \
	libbinder \
	libui

LOCAL_MODULE := libshim_ui
LOCAL_C_INCLUDES := frameworks/native/include
LOCAL_CFLAGS := -O3 -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)


## libshim_vtmal
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	libshim_vtmal.cpp

LOCAL_MODULE := libshim_vtmal
LOCAL_CFLAGS := -O3 -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)


## libshim_wvm
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	libshim_wvm.cpp

LOCAL_SHARED_LIBRARIES := \
	libcutils \
	liblog \
	libmedia \
	libstagefright \
	libstagefright_foundation \
	libui

LOCAL_MODULE := libshim_wvm
LOCAL_CFLAGS := -O3 -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)
