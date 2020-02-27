ARCHS = armv7 arm64
VALID_ARCHS = armv7 armv7s arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PopupOnStart
PopupOnstart_FILES = Tweak.xm
PopupOnstart_FRAMEWORKS = UIKit
PopupOnstart_LIBRARIES = bulletin

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += popprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
