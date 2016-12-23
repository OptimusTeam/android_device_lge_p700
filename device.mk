$(call inherit-product, device/lge/msm7x27a-common/msm7x27a-common.mk)
$(call inherit-product, device/lge/msm7x27a-common/nfc.mk)

$(call inherit-product-if-exists, vendor/lge/p700/p700-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/p700/overlay

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.u0.rc:root/init.u0.rc \
    $(LOCAL_PATH)/ueventd.u0.rc:root/ueventd.u0.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/u0_keypad.kl:system/usr/keylayout/u0_keypad.kl \
    $(LOCAL_PATH)/configs/melfas-ts.idc:system/usr/idc/melfas-ts.idc \
    $(LOCAL_PATH)/configs/melfas-ts.kl:system/usr/keylayout/qwerty.kl \
    $(LOCAL_PATH)/configs/melfas-ts.kl:system/usr/keylayout/melfas-ts.kl \
    $(LOCAL_PATH)/configs/fstab.u0:root/fstab.u0

# Permission files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/wlan.ko:system/lib/modules/wlan.ko

# DalvikVM
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/bin/dalvikvm:system/bin/dalvikvm
	
# NFC
# PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/apk/Nfc.apk:system/app/Nfc.apk

# Misc
PRODUCT_PACKAGES += \
    libnetcmdiface

# LibWebCore
PRODUCT_PACKAGES += \
    libwebcore 

#bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/bin/hwmac:system/bin/hwmac \
    $(LOCAL_PATH)/prebuilt/bin/hci_qcomm_init:system/bin/hci_qcomm_init \
    $(LOCAL_PATH)/prebuilt/lib/libbt-vendor.so:system/lib/libbt-vendor.so

# Enable for debugging
PRODUCT_PROPERTY_OVERRIDES += \
    ro.debuggable=1 \
    persist.service.adb.enable=1

