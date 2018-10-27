LOCAL_PATH:= $(call my-dir)

#
# libui_ext.so
#

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	lib/FpsCounter.cpp \
	lib/GraphicBufferUtil.cpp \
	lib/SWWatchDog.cpp

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/inc \
	frameworks/native/libs/nativewindow/include \
	frameworks/native/libs/nativebase/include \
	frameworks/native/libs/arect/include \
	external/libpng \
	external/zlib \
	external/skia/src/images \
	external/skia/include/core

LOCAL_SHARED_LIBRARIES := \
	libutils \
	libcutils \
	liblog \
	libbinder \
	libhardware \
	libdl \
	libgralloc_extra \
	libpng \
	libui

ifeq (, $(findstring MTK_AOSP_ENHANCEMENT, $(MTK_GLOBAL_CFLAGS)))
	LOCAL_SRC_FILES += \
		lib/IDumpTunnel.cpp \
		lib/RefBaseDump.cpp
endif

LOCAL_MODULE := libui_ext
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)



#
# libgui_ext.so
#

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	lib/IGuiExtService.cpp \
	lib/GuiExtService.cpp \
	lib/GuiExtClient.cpp \
	lib/GuiExtClientProducer.cpp \
	lib/GuiExtClientConsumer.cpp \
	lib/GuiExtImpl.cpp

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/inc

LOCAL_SHARED_LIBRARIES := \
	libutils \
	libcutils \
	libbinder \
	libhardware \
	libhardware_legacy \
	libgui \
	liblog \
	libui \
	libdl \
	libion \
	libion_mtk \
	libgralloc_extra \
	libui_ext

LOCAL_MODULE := libgui_ext
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
