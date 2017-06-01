# Inherit from some product specifics
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common stuff
$(call inherit-product, vendor/omni/config/common.mk)

# Release name
PRODUCT_RELEASE_NAME := cedric

# Charger
PRODUCT_PACKAGES += charger charger_res_images

PRODUCT_COPY_FILES += \
    device/motorola/cedric/kernel:kernel \
    device/motorola/cedric/dt.img:dt.img \
	device/motorola/cedric/twrp.fstab:root/etc/twrp.fstab

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := cedric
PRODUCT_NAME := omni_cedric
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Moto G5
PRODUCT_MANUFACTURER := motorola