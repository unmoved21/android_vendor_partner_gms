LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := NeoStore
LOCAL_SRC_FILES := NeoStore.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
# these lines may break builds before 19.1 so make them conditional
ifneq ($(call math_gt_or_eq, $(PLATFORM_SDK_VERSION), 31),)
LOCAL_OPTIONAL_USES_LIBRARIES := androidx.window.extensions androidx.window.sidecar
endif
LOCAL_PRODUCT_MODULE := true
include $(BUILD_PREBUILT)
