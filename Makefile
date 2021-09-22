export SYSROOT = $(THEOS)/sdks/iPhoneOS14.4.sdk/
export ARCHS = arm64 arm64e
export TARGET = iphone:clang:latest:13.0

FINALPACKAGE = 1
DEBUG = 0

TWEAK_NAME = CCCalc
BUNDLE_NAME = ai.paisseon.cccalc
ai.paisseon.cccalc_INSTALL_PATH = /Library/MobileSubstrate/DynamicLibraries

CCCalc_FILES = Tweak.xm $(wildcard CCCalcUI/*.m)
CCCalc_CFLAGS = -fobjc-arc -Wno-error=deprecated-declarations
CCCalc_PRIVATE_FRAMEWORKS = TelephonyUI

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk
include $(THEOS)/makefiles/bundle.mk
include $(THEOS_MAKE_PATH)/tweak.mk
