LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

# include the non-open-source counterpart to this file
-include vendor/ZTE/NX402/NX402-vendor.mk


#----------------------------------------------------------------------
# extra images
#----------------------------------------------------------------------
#include build/core/generate_extra_images.mk
