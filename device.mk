#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

#device information
PRODUCT_BRAND := TK
PRODUCT_DEVICE := sl8541e_1h10
PRODUCT_MANUFACTURER := TK
PRODUCT_MODEL := TK

# Audio
PRODUCT_PACKAGES += \
	android.hardware.audio@2.0-service \
	android.hardware.audio@5.0-impl \
	android.hardware.audio.effect@5.0-impl \
	android.hardware.bluetooth.audio@2.0-impl \
	audio.r_submix.default \
	audio.usb.default  \
	libalsautils \
	tinymix
	
# Bluetooth
PRODUCT_PACKAGES += \
	android.hardware.bluetooth@1.0-service \
	android.hardware.bluetooth@1.0-impl \
	libbt-vendor

# Camera
PRODUCT_PACKAGES += \
	android.hardware.camera.provider@2.4-service
    
# ConfigStore
PRODUCT_PACKAGES += \
	android.hardware.configstore@1.1-service
    
# Display
PRODUCT_PACKAGES += \
	android.hardware.graphics.allocator@2.0-service \
	android.hardware.graphics.allocator@2.0-impl \
	android.hardware.graphics.composer@2.1-service \
	android.hardware.graphics.composer@2.1-impl \
	android.hardware.graphics.mapper@2.0-impl \
	android.hardware.memtrack@1.0-service \
	android.hardware.memtrack@1.0-impl \
	libtinyxml
    
# DRM
PRODUCT_PACKAGES += \
	android.hardware.drm@1.0-service \
	android.hardware.drm@1.0-impl \
	android.hardware.drm@1.1-service.clearkey \
	libdrm

# Fingerprint
PRODUCT_PACKAGES += \
	android.hardware.biometrics.fingerprint@2.1-service
	
# Dumpstate
PRODUCT_PACKAGES += \
	android.hardware.dumpstate@1.0-service

# Gatekeeper
PRODUCT_PACKAGES += \
	android.hardware.gatekeeper@1.0-service \
	android.hardware.gatekeeper@1.0-impl

# Health
PRODUCT_PACKAGES += \
	android.hardware.health@2.0-service \
	android.hardware.health@1.0-impl

# Keymaster
PRODUCT_PACKAGES += \
	android.hardware.keymaster@3.0-service \
	android.hardware.keymaster@3.0-impl

# RenderScript
PRODUCT_PACKAGES += \
	android.hardware.renderscript@1.0-impl.so

# Lights
PRODUCT_PACKAGES += \
	android.hardware.light@2.0-service \
	android.hardware.light@2.0-impl

# Media
PRODUCT_PACKAGES += \
	android.hardware.media.omx@1.0-service

# Power
PRODUCT_PACKAGES += \
	power.default

# Broadcast radio
PRODUCT_PACKAGES += \
	android.hardware.broadcastradio@1.0-impl.so

# Soundtrigger
PRODUCT_PACKAGES += \
	android.hardware.soundtrigger@2.0-impl.so
	
# Thermal
PRODUCT_PACKAGES += \
	android.hardware.thermal@1.0-impl \
	android.hardware.thermal@1.0-service \
	thermal.default

# Vibrator
PRODUCT_PACKAGES += \
	android.hardware.vibrator@1.0-service \
	android.hardware.vibrator@1.0-impl \
	vibrator.default
	
# WiFi
PRODUCT_PACKAGES += \
	android.hardware.wifi@1.0-service \
	libwpa_client \
	hostapd \
	wpa_supplicant \
	libwifi-hal

# Sensors
PRODUCT_PACKAGES += \
	android.hardware.sensors@1.0-impl \
	android.hardware.sensors@1.0-service \
	libsensorndkbridge
	
# Soundtrigger
PRODUCT_PACKAGES += \
	android.hardware.soundtrigger@2.0-impl

# GPS
PRODUCT_PACKAGES += \
	gps.default

# VNDK
PRODUCT_PACKAGES += \
	libstdc++.vendor
    
# Seccomp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/seccomp/configstore@1.1.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/configstore@1.1.policy \
    $(LOCAL_PATH)/configs/seccomp/mediaextractor.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy 

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl \

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
    $(LOCAL_PATH)/configs/media/media_profiles_turnkey.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_turnkey.xml \

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level-1.xml \
#   frameworks/native/data/etc/android.hardware.vulkan.version.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.cts.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.cts.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml \

# Audio XML
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_effects.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/audio/audio_hw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_hw.xml \
    $(LOCAL_PATH)/configs/audio/audio_para:$(TARGET_COPY_OUT_VENDOR)/etc/audio_para \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/configs/audio/primary_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/primary_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml

# linker
PRODUCT_PACKAGES += ld.config.txt
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/ld.config.txt:$(TARGET_COPY_OUT_VENDOR)/etc/ld.config.txt

# VNDK
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/vendor-rc/vendor.sprd.hardware.connmgr@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.sprd.hardware.connmgr@1.0-service.rc \
    $(LOCAL_PATH)/prebuilts/vendor-rc/vendor.sprd.hardware.face@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.sprd.hardware.face@1.0-service.rc \
    $(LOCAL_PATH)/prebuilts/vendor-rc/vendor.sprd.hardware.gnss@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.sprd.hardware.gnss@1.0-service.rc \
    $(LOCAL_PATH)/prebuilts/vendor-rc/vendor.sprd.hardware.log@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.sprd.hardware.log@1.0-service.rc \
    $(LOCAL_PATH)/prebuilts/vendor-rc/vendor.sprd.hardware.power@2.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.sprd.hardware.power@2.0-service.rc \
    $(LOCAL_PATH)/prebuilts/vendor-rc/vendor.sprd.hardware.thermal@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.sprd.hardware.thermal@1.0-service.rc \
    $(LOCAL_PATH)/prebuilts/vndk/lib/libicuuc.so:$(TARGET_COPY_OUT_VENDOR)/lib/libicuuc.so \
    $(LOCAL_PATH)/prebuilts/vndk/lib64/libicuuc.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libicuuc.so \
    prebuilts/vndk/v27/arm64/arch-arm-armv8-a/shared/vndk-core/libbase.so:$(TARGET_COPY_OUT_VENDOR)/lib/libbase-v27.so \
    prebuilts/vndk/v27/arm64/arch-arm64-armv8-a/shared/vndk-core/libbase.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libbase-v27.so

# SPRD Linux Kernel modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/modules/mali.ko:$(TARGET_COPY_OUT_VENDOR)/lib/modules/mali.ko \
    $(LOCAL_PATH)/rootdir/modules/sprdbt_tty.ko:$(TARGET_COPY_OUT_VENDOR)/lib/modules/sprdbt_tty.ko \
    $(LOCAL_PATH)/rootdir/modules/sprd_fm.ko:$(TARGET_COPY_OUT_VENDOR)/lib/modules/sprd_fm.ko \
    $(LOCAL_PATH)/rootdir/modules/sprdwl_ng.ko:$(TARGET_COPY_OUT_VENDOR)/lib/modules/sprdwl_ng.ko

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \
    zram.sh \

PRODUCT_PACKAGES += \
    init.common.rc \
    init.ram.rc \
    init.storage.rc \
    init.sl8541e_1h10.rc \
    init.sl8541e_1h10.usb.rc \
    ueventd.sl8541e_1h10.rc \
    fstab.sl8541e_1h10 \
    fstab.sl8541e_1h10.first_stage

# Vendor default.prop
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb

# RemovePackages
PRODUCT_PACKAGES += \
    RemovePackages

PRODUCT_PACKAGES += \
    libaudiopolicyengineconfigurable \
    libwifi-system \
    libft2

# Recovery files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/ueventd.sl8541e_1h10.rc:root/ueventd.sl8541e_1h10.rc \
    $(LOCAL_PATH)/recovery/init.recovery.sl8541e_1h10.rc:root/init.recovery.sl8541e_1h10.rc

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/tk/sl8541e_1h10/sl8541e_1h10-vendor.mk)
