LOCAL_PATH := $(my-dir)

ifeq ($(TARGET_DEVICE),mimmi)
    subdir_makefiles := \
        $(LOCAL_PATH)/libaudio/Android.mk \
        $(LOCAL_PATH)/libqcomui/Android.mk
    include $(subdir_makefiles)
endif
