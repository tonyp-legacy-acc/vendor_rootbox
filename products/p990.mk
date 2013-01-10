# Inherit CM device configuration
$(call inherit-product, device/lge/p990/cm.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/rootbox/configs/gsm.mk)

# P990 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/p990

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

# Setup device specific product configuration.
PRODUCT_DEVICE := p990
PRODUCT_NAME := rootbox_p990_tonyp
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-P990

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip
