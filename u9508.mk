$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_as_supl.mk)

$(call inherit-product-if-exists, vendor/huawei/u9508/u9508-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/u9508/overlay

# high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

LOCAL_PATH := device/huawei/u9508
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

#init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init:root/init \
    $(LOCAL_PATH)/prebuilt/init.huawei.rc:root/init.huawei.rc \
    $(LOCAL_PATH)/prebuilt/ueventd.huawei.rc:root/ueventd.huawei.rc \
    $(LOCAL_PATH)/prebuilt/init.rc:root/init.rc
    

# vold
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/vold.fstab:system/etc/vold.fstab \
	$(LOCAL_PATH)/configs/external_sd.fstab:system/external_sd.fstab

#configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/gpsconfig.xml:system/etc/gpsconfig.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/permissions/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.faketouch.multitouch.distinct.xml:system/etc/permissions/android.hardware.faketouch.multitouch.distinct.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.faketouch.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.faketouch.multitouch.jazzhand.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.screen.landscape.xml:system/etc/permissions/android.hardware.screen.landscape.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.screen.portrait.xml:system/etc/permissions/android.hardware.screen.portrait.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    $(LOCAL_PATH)/configs/permissions/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    $(LOCAL_PATH)/configs/permissions/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    $(LOCAL_PATH)/configs/permissions/com.android.location.provider.xml:system/etc/permissions/com.android.location.provider.xml \
    $(LOCAL_PATH)/configs/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    $(LOCAL_PATH)/configs/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    $(LOCAL_PATH)/configs/permissions/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    $(LOCAL_PATH)/configs/permissions/platform.xml:system/etc/permissions/platform.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# Input device calibration files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hisik3_touchscreen.idc:system/usr/idc/hisik3_touchscreen.idc \
    $(LOCAL_PATH)/configs/k3_keypad.idc:system/usr/idc/k3_keypad.idc \
    $(LOCAL_PATH)/configs/synaptics.idc:system/usr/idc/synaptics.idc

PRODUCT_PACKAGES += \
	librs_jni \
	com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
	make_ext4fs \
	e2fsck \
	setup_fs

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/asound_CADL.dat:system/etc/asound_CADL.dat \
    $(LOCAL_PATH)/configs/asound_ce_CADL.dat:system/etc/asound_ce_CADL.dat \
    $(LOCAL_PATH)/configs/asound_ce_CNDLR.dat:system/etc/asound_ce_CNDLR.dat \
    $(LOCAL_PATH)/configs/asound_CNDLR.dat:system/etc/asound_CNDLR.dat \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/batt_fw.bin:system/etc/batt_fw.bin \
    $(LOCAL_PATH)/configs/camera_orientation.cfg:system/etc/camera_orientation.cfg \
    $(LOCAL_PATH)/configs/camera_resolutions.cfg:system/etc/camera_resolutions.cfg \
    $(LOCAL_PATH)/configs/es305_cs.bin:system/etc/es305_cs.bin \
    $(LOCAL_PATH)/configs/es305_es.bin:system/etc/es305_es.bin \
    $(LOCAL_PATH)/configs/es305_uart.bin:system/etc/es305_uart.bin \
    $(LOCAL_PATH)/configs/globalAutoAdapt-conf.xml:system/etc/globalAutoAdapt-conf.xml \
    $(LOCAL_PATH)/configs/globalMatchs-conf.xml:system/etc/globalMatchs-conf.xml \
    $(LOCAL_PATH)/configs/k3_extractor.cfg:system/etc/k3_extractor.cfg \
    $(LOCAL_PATH)/configs/k3_omx.cfg:system/etc/k3_omx.cfg \
    $(LOCAL_PATH)/configs/tpa2028.cfg:system/etc/tpa2028.cfg \
    $(LOCAL_PATH)/configs/volume_fm_CADL.dat:system/etc/volume_fm_CADL.dat \
    $(LOCAL_PATH)/configs/volume_fm_CNDLR.dat:system/etc/volume_fm_CNDLR.dat \
    $(LOCAL_PATH)/configs/volume_incall_CADL.dat:system/etc/volume_incall_CADL.dat \
    $(LOCAL_PATH)/configs/volume_incall_ce_CADL.dat:system/etc/volume_incall_ce_CADL.dat \
    $(LOCAL_PATH)/configs/volume_incall_ce_CNDLR.dat:system/etc/volume_incall_ce_CNDLR.dat \
    $(LOCAL_PATH)/configs/volume_incall_CNDLR.dat:system/etc/volume_incall_CNDLR.dat

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init.bcm.btpm_off.sh:system/etc/bluetooth/init.bcm.btpm_off.sh \
    $(LOCAL_PATH)/configs/init.bcm.btpm_on.sh:system/etc/bluetooth/init.bcm.btpm_on.sh \
    $(LOCAL_PATH)/configs/init.bcm.chip_off.sh:system/etc/bluetooth/init.bcm.chip_off.sh \
    $(LOCAL_PATH)/configs/init.bcm.chip_on.sh:system/etc/bluetooth/init.bcm.chip_on.sh \
    $(LOCAL_PATH)/configs/init.bcm.bt.sh:system/etc/bluetooth/init.bcm.bt.sh

# Camera
PRODUCT_PACKAGES := \
    Camera

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_u9508
PRODUCT_DEVICE := u9508
