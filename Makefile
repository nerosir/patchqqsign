
THEOS_DEVICE_IP = 192.168.199.112
GO_EASY_ON_ME=1
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = patchQQSign
patchQQSign_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 QQ"
