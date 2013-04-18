PRODUCT_MAKEFILES := $(LOCAL_DIR)/full_solstice.mk
ifeq ($(TARGET_PRODUCT),aokp_solstice)
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/aokp.mk
endif
ifeq ($(TARGET_PRODUCT),cna_solstice)
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/cna.mk
endif
