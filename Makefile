ARCHS = armv7 arm64
TARGET = iphone:clang:latest:latest
THEOS_BUILD_DIR = Packages
INSTALL_TARGET_PROCESSES = SpringBoard

include theos/makefiles/common.mk

TWEAK_NAME = TokeTime
TokeTime_FILES = Tweak.xm
TokeTime_FRAMEWORKS = UIKit
TokeTime_FRAMEWORKS += CoreGraphics
TokeTime_FRAMEWORKS += QuartzCore

include $(THEOS_MAKE_PATH)/tweak.mk
