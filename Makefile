include $(THEOS)/makefiles/common.mk

TWEAK_NAME = BatteryOnLS
BatteryOnLS_FILES = Tweak.xm
BatteryOnLS_CFLAGS = -fobjc-arc


include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
