# Inherit common stuff
$(call inherit-product, vendor/reborn/config/common.mk)

# Include S+ Reborn audio files
include vendor/reborn/config/reborn_audio.mk

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Helium.ogg

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/reborn/prebuilt/common/bootanimation/800.zip:system/media/bootanimation.zip
endif

$(call inherit-product, vendor/reborn/config/reborn.mk)
