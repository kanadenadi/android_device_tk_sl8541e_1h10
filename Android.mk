#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),sl8541e_1h10)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
