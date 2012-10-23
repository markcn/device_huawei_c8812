wififiles := \
	bcm_loadecho_4330.sh \
	bcm_loadecho.sh \
	bcm_loadipf_4330.sh \
	bcm_loadipf.sh \
	connectap_4330.sh \
	connectap.sh \
	dhd_4330.ko \
	firmware_apsta.bin \
	firmware.bin \
	firmware_test.bin \
	fw_4330_b2.bin \
	fw_4330_b2_test.bin \
	iwconfig \
	iwlist \
	iwpriv \
	nvram_4330_MSM7225A_U8655.txt \
	nvram_4330_MSM7227A_U8815.txt \
	nvram_4330_MSM7627A_C8812.txt \
	nvram_4330.txt \
	nvram.txt \
	udp_server \
	wifi_mt_1.1.sh \
	wifi_mt_1.2.sh \
	wifi_mt_2.1.sh \
	wifi_mt_finish_1.1.sh \
	wifi_mt_finish_1.2.sh \
	wifi_mt_finish_2.1.sh 

PRODUCT_COPY_FILES += $(foreach file,$(wififiles),\
	$(LOCAL_PATH)/$(file):system/etc/wifi/$(file))
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/dhd_4330.ko:root/dhd_4330.ko
