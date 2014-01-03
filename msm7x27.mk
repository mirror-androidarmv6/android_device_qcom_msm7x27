# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072 \
    ro.opengles.surface.rgb565=true \
    com.qc.hardware=true \
    debug.enabletr=false \
    debug.hwui.render_dirty_regions=false \
    debug.qctwa.statusbar=1 \
    debug.qctwa.preservebuf=1 \
    hwui.print_config=choice \
    persist.sys.strictmode.visual=false

# Stagefright
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.enable-player=true \
    media.stagefright.enable-meta=false \
    media.stagefright.enable-scan=false \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true

# Camcorder
PRODUCT_PROPERTY_OVERRIDES += \
    debug.camcorder.disablemeta=1

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heaptargetutilization=0.25 \
    dalvik.vm.execution-mode=int:fast

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    libaudioutils

# Display
PRODUCT_PACKAGES += \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    gralloc.msm7x27 \
    copybit.msm7x27

# Media
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Inherit QCOM vendor
$(call inherit-product, vendor/qcom/msm7x27/qcom-vendor.mk)

# qcom-msm7x27 overlays
DEVICE_PACKAGE_OVERLAYS += device/qcom/msm7x27/overlay
