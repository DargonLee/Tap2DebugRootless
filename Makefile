GO_EASY_ON_ME = 1
THEOS_DEVICE_IP = localhost -o StrictHostKeyChecking=no
THEOS_DEVICE_PORT = 2222
ARCHS = arm64 arm64e
TARGET := iphone:clang:latest:15.0

THEOS_PACKAGE_SCHEME=rootless
THEOS_PACKAGE_INSTALL_PREFIX=/var/jb

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ShortcutToDebug

ShortcutToDebug_FILES = Tweak.x TapSB.x
ShortcutToDebug_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
