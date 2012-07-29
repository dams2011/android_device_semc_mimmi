# Copyright (C) 2012 The Android Open Source Project
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

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Discard inherited values and use our own instead.
PRODUCT_NAME := mimmi
PRODUCT_DEVICE := mimmi
PRODUCT_MODEL := U20i

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
PRODUCT_COPY_FILES += \
    $(TARGET_PREBUILT_KERNEL):kernel

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Graphics
PRODUCT_PACKAGES := \
    copybit.msm7x27 \
    gralloc.msm7x27 \
    hwcomposer.msm7x27 \
    libopencorehw \
    libQcomUI

# OMX
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw

# Camera
#PRODUCT_PACKAGES += \
#    camera.msm7x27

# GPS
PRODUCT_PACKAGES += \
    gps.delta

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    libaudioutils

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Prebuilt files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/app/SystemConnector.apk:system/app/SystemConnector.apk \
    $(LOCAL_PATH)/prebuilt/bin/akmd2:system/bin/akmd2 \
    $(LOCAL_PATH)/prebuilt/bin/chargemon:system/bin/chargemon \
    $(LOCAL_PATH)/prebuilt/bin/hciattach:system/bin/hciattach \
    $(LOCAL_PATH)/prebuilt/bin/nvimport:system/bin/nvimport \
    $(LOCAL_PATH)/prebuilt/bin/port-bridge:system/bin/port-bridge \
    $(LOCAL_PATH)/prebuilt/bin/qmuxd:system/bin/qmuxd \
    $(LOCAL_PATH)/prebuilt/bin/rild:system/bin/rild \
    $(LOCAL_PATH)/prebuilt/bin/semc_chargalg:system/bin/semc_chargalg \
    $(LOCAL_PATH)/prebuilt/bin/tiap_cu:system/bin/tiap_cu \
    $(LOCAL_PATH)/prebuilt/bin/tiap_loader:system/bin/tiap_loader \
    $(LOCAL_PATH)/prebuilt/bin/tiap_loader.sh:system/bin/tiap_loader.sh \
    $(LOCAL_PATH)/prebuilt/bin/updatemiscta:system/bin/updatemiscta \
    $(LOCAL_PATH)/prebuilt/bin/wlan_cu:system/bin/wlan_cu \
    $(LOCAL_PATH)/prebuilt/bin/wlan_loader:system/bin/wlan_loader \
    $(LOCAL_PATH)/prebuilt/etc/01_qcomm_omx.cfg:system/etc/01_qcomm_omx.cfg \
    $(LOCAL_PATH)/prebuilt/etc/adreno_config.txt:system/etc/adreno_config.txt \
    $(LOCAL_PATH)/prebuilt/etc/audio_effects.conf:system/etc/audio_effects.conf \
    $(LOCAL_PATH)/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    $(LOCAL_PATH)/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    $(LOCAL_PATH)/prebuilt/etc/hosts:system/etc/hosts \
    $(LOCAL_PATH)/prebuilt/etc/hw_config.sh:system/etc/hw_config.sh \
    $(LOCAL_PATH)/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/prebuilt/etc/sensors.conf:system/etc/sensors.conf \
    $(LOCAL_PATH)/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/prebuilt/etc/firmware/fmc_init_1273.1.bts:system/etc/firmware/fmc_init_1273.1.bts \
    $(LOCAL_PATH)/prebuilt/etc/firmware/fmc_init_1273.2.bts:system/etc/firmware/fmc_init_1273.2.bts \
    $(LOCAL_PATH)/prebuilt/etc/firmware/fm_rx_init_1273.1.bts:system/etc/firmware/fm_rx_init_1273.1.bts \
    $(LOCAL_PATH)/prebuilt/etc/firmware/fm_rx_init_1273.2.bts:system/etc/firmware/fm_rx_init_1273.2.bts \
    $(LOCAL_PATH)/prebuilt/etc/firmware/fm_tx_init_1273.1.bts:system/etc/firmware/fm_tx_init_1273.1.bts \
    $(LOCAL_PATH)/prebuilt/etc/firmware/fm_tx_init_1273.2.bts:system/etc/firmware/fm_tx_init_1273.2.bts \
    $(LOCAL_PATH)/prebuilt/etc/firmware/TIInit_7.2.31.bts:system/etc/firmware/TIInit_7.2.31.bts \
    $(LOCAL_PATH)/prebuilt/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    $(LOCAL_PATH)/prebuilt/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    $(LOCAL_PATH)/prebuilt/etc/firmware/cy8_truetouch_jtouch.hex:system/etc/firmware/cy8_truetouch_jtouch.hex \
    $(LOCAL_PATH)/prebuilt/etc/firmware/cy8_truetouch_tpk.hex:system/etc/firmware/cy8_truetouch_tpk.hex \
    $(LOCAL_PATH)/prebuilt/etc/init.d/01mountext:system/etc/init.d/01mountext \
    $(LOCAL_PATH)/prebuilt/etc/init.d/10apps2sd:system/etc/init.d/10apps2sd \
    $(LOCAL_PATH)/prebuilt/etc/init.d/10dnsconf:system/etc/init.d/10dnsconf \
    $(LOCAL_PATH)/prebuilt/etc/init.d/10hostapconf:system/etc/init.d/10hostapconf \
    $(LOCAL_PATH)/prebuilt/etc/semc/chargemon/anim1.rle:system/etc/semc/chargemon/anim1.rle \
    $(LOCAL_PATH)/prebuilt/etc/semc/chargemon/anim2.rle:system/etc/semc/chargemon/anim2.rle \
    $(LOCAL_PATH)/prebuilt/etc/semc/chargemon/anim3.rle:system/etc/semc/chargemon/anim3.rle \
    $(LOCAL_PATH)/prebuilt/etc/semc/chargemon/anim4.rle:system/etc/semc/chargemon/anim4.rle \
    $(LOCAL_PATH)/prebuilt/etc/semc/chargemon/anim5.rle:system/etc/semc/chargemon/anim5.rle \
    $(LOCAL_PATH)/prebuilt/etc/semc/chargemon/anim6.rle:system/etc/semc/chargemon/anim6.rle \
    $(LOCAL_PATH)/prebuilt/etc/semc/chargemon/anim7.rle:system/etc/semc/chargemon/anim7.rle \
    $(LOCAL_PATH)/prebuilt/etc/semc/chargemon/anim8.rle:system/etc/semc/chargemon/anim8.rle \
    $(LOCAL_PATH)/prebuilt/etc/wifi/dnsmasq.conf:system/etc/wifi/dnsmasq.conf \
    $(LOCAL_PATH)/prebuilt/etc/wifi/tiwlan.ini:system/etc/wifi/tiwlan.ini \
    $(LOCAL_PATH)/prebuilt/etc/wifi/tiwlan_firmware.bin:system/etc/wifi/tiwlan_firmware.bin \
    $(LOCAL_PATH)/prebuilt/etc/wifi/softap/hostapd.conf:system/etc/wifi/softap/hostapd.conf \
    $(LOCAL_PATH)/prebuilt/etc/wifi/softap/tiwlan_ap.ini:system/etc/wifi/softap/tiwlan_ap.ini \
    $(LOCAL_PATH)/prebuilt/etc/wifi/softap/tiwlan_firmware_ap.bin:system/etc/wifi/softap/tiwlan_firmware_ap.bin \
    $(LOCAL_PATH)/prebuilt/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    $(LOCAL_PATH)/prebuilt/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    $(LOCAL_PATH)/prebuilt/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
    $(LOCAL_PATH)/prebuilt/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    $(LOCAL_PATH)/prebuilt/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    $(LOCAL_PATH)/prebuilt/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    $(LOCAL_PATH)/prebuilt/lib/hw/audio_policy.msm7x27.so:system/lib/hw/audio_policy.msm7x27.so \
    $(LOCAL_PATH)/prebuilt/lib/hw/audio.primary.msm7x27.so:system/lib/hw/audio.primary.msm7x27.so \
    $(LOCAL_PATH)/prebuilt/lib/hw/hal_seport.default.so:system/lib/hw/hal_seport.default.so \
    $(LOCAL_PATH)/prebuilt/lib/hw/lights.default.so:system/lib/hw/lights.default.so \
    $(LOCAL_PATH)/prebuilt/lib/hw/lights.delta.so:system/lib/hw/lights.delta.so \
    $(LOCAL_PATH)/prebuilt/lib/hw/sensors.mimmi.so:system/lib/hw/sensors.mimmi.so \
    $(LOCAL_PATH)/prebuilt/lib/libsystemconnector/libuinputdevicejni.so:system/lib/libsystemconnector/libuinputdevicejni.so \
    $(LOCAL_PATH)/prebuilt/lib/libaudioeq.so:system/lib/libaudioeq.so \
    $(LOCAL_PATH)/prebuilt/lib/libauth.so:system/lib/libauth.so \
    $(LOCAL_PATH)/prebuilt/lib/libC2D2.so:system/lib/libC2D2.so \
    $(LOCAL_PATH)/prebuilt/lib/libcm.so:system/lib/libcm.so \
    $(LOCAL_PATH)/prebuilt/lib/libdiag.so:system/lib/libdiag.so \
    $(LOCAL_PATH)/prebuilt/lib/libdll.so:system/lib/libdll.so \
    $(LOCAL_PATH)/prebuilt/lib/libdsm.so:system/lib/libdsm.so \
    $(LOCAL_PATH)/prebuilt/lib/libdss.so:system/lib/libdss.so \
    $(LOCAL_PATH)/prebuilt/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    $(LOCAL_PATH)/prebuilt/lib/libgsl.so:system/lib/libgsl.so \
    $(LOCAL_PATH)/prebuilt/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
    $(LOCAL_PATH)/prebuilt/lib/libmiscta.so:system/lib/libmiscta.so \
    $(LOCAL_PATH)/prebuilt/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    $(LOCAL_PATH)/prebuilt/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    $(LOCAL_PATH)/prebuilt/lib/libmmipl.so:system/lib/libmmipl.so \
    $(LOCAL_PATH)/prebuilt/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    $(LOCAL_PATH)/prebuilt/lib/libnv.so:system/lib/libnv.so \
    $(LOCAL_PATH)/prebuilt/lib/liboem_rapi.so:system/lib/liboem_rapi.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \
    $(LOCAL_PATH)/prebuilt/lib/liboncrpc.so:system/lib/liboncrpc.so \
    $(LOCAL_PATH)/prebuilt/lib/libopencore_common.so:system/lib/libopencore_common.so \
    $(LOCAL_PATH)/prebuilt/lib/libOpenVG.so:system/lib/libOpenVG.so \
    $(LOCAL_PATH)/prebuilt/lib/libpbmlib.so:system/lib/libpbmlib.so \
    $(LOCAL_PATH)/prebuilt/lib/libqmi.so:system/lib/libqmi.so \
    $(LOCAL_PATH)/prebuilt/lib/libqueue.so:system/lib/libqueue.so \
    $(LOCAL_PATH)/prebuilt/lib/libril.so:system/lib/libril.so \
    $(LOCAL_PATH)/prebuilt/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    $(LOCAL_PATH)/prebuilt/lib/libsemc_ril.so:system/lib/libsemc_ril.so \
    $(LOCAL_PATH)/prebuilt/lib/libsystemconnector_hal_jni.so:system/lib/libsystemconnector_hal_jni.so \
    $(LOCAL_PATH)/prebuilt/lib/libuim.so:system/lib/libuim.so \
    $(LOCAL_PATH)/prebuilt/lib/libwms.so:system/lib/libwms.so \
    $(LOCAL_PATH)/prebuilt/lib/libwmsts.so:system/lib/libwmsts.so \
    $(LOCAL_PATH)/prebuilt/usr/idc/cy8ctma300_ser.idc:system/usr/idc/cy8ctma300_ser.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/mimmi_keypad.idc:system/usr/idc/mimmi_keypad.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    $(LOCAL_PATH)/prebuilt/usr/keychars/mimmi_keypad.kcm.bin:system/usr/keychars/mimmi_keypad.kcm.bin \
    $(LOCAL_PATH)/prebuilt/usr/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
    $(LOCAL_PATH)/prebuilt/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    $(LOCAL_PATH)/prebuilt/usr/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
    $(LOCAL_PATH)/prebuilt/usr/keychars/systemconnector.kcm.bin:system/usr/keychars/systemconnector.kcm.bin \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/mimmi_keypad.kl:system/usr/keylayout/mimmi_keypad.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/systemconnector.kl:system/usr/keylayout/systemconnector.kl

# Prebuilt Updater-script
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/update-binary:obj/EXECUTABLES/updater_intermediates/updater

PRODUCT_LOCALES += \
                mdpi \
                ldpi
