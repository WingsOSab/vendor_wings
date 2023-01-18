# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# WingsOS Platform Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.wings.build.date=$(BUILD_DATE) \
    ro.wings.fingerprint=$(ROM_FINGERPRINT) \
    ro.wings.version=$(WINGS_VERSION) \
    ro.wings.device=$(WINGS_BUILD) \
    ro.modversion=$(WINGS_VERSION)

# Updater
ifeq ($(IS_OFFICIAL),true)
    ADDITIONAL_SYSTEM_PROPERTIES  += \
        ro.is_official=true
endif
