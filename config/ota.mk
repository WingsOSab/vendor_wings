# Updater
ifeq ($(IS_OFFICIAL),true)
    PRODUCT_PACKAGES += \
        Updater

    PRODUCT_COPY_FILES += \
        vendor/wings/prebuilt/common/etc/init/init.wings-updater.rc:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/init/init.wings-updater.rc
endif
