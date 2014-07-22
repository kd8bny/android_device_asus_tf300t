# Release name
PRODUCT_RELEASE_NAME := TF300T

# Boot animation
#TARGET_SCREEN_HEIGHT := 1280
#TARGET_SCREEN_WIDTH := 800

# Inherit device configuration
$(call inherit-product, device/asus/tf300t/full_tf300t.mk)

# Inherit common product files.
$(call inherit-product, vendor/mahdi/configs/common.mk)

# Inherit tablet config.
$(call inherit-product, vendor/mahdi/configs/common_full_tablet_wifionly.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := tf300t
PRODUCT_NAME := mahdi_tf300t
PRODUCT_BRAND := Asus
PRODUCT_MODEL := TF300T
PRODUCT_MANUFACTURER := Asus

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=EeePad BUILD_FINGERPRINT="asus/WW_epad/EeePad:4.1.1/JRO03C/WW_epad-10.4.2.18-20121122:user/release-keys" PRIVATE_BUILD_DESC="WW_epad-user 4.1.1 JRO03C WW_epad-10.4.2.18-20121122 release-keys"

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/mahdi/prebuilt/bootanimations/BOOTANIMATION-1280x800.zip:system/media/bootanimation.zip
