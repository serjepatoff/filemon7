DEBUG = 0

ARCHS = armv7
TARGET = iphone:clang:latest:9.3
CLANG = xcrun -sdk iphoneos clang

TARGET_CC  = $(CLANG)
TARGET_CXX = $(CLANG)
TARGET_LD  = $(CLANG)

# add entitlements
#TARGET_CODESIGN_FLAGS ?= -Sentitlements.xml

include $(THEOS)/makefiles/common.mk

TOOL_NAME = filemon7

${TOOL_NAME}_FILES = filemon.c

${TOOL_NAME}_CFLAGS  = -Wno-error -Os -g0
#${TOOL_NAME}_LDFLAGS = 

#${TOOL_NAME}_LIBRARIES = stdc++ jetslammed
#${TOOL_NAME}_FRAMEWORKS = Foundation UIKit CoreGraphics Security SystemConfiguration MobileCoreServices CrashReporter
#${TOOL_NAME}_PRIVATE_FRAMEWORKS = UIAutomation

include $(THEOS_MAKE_PATH)/tool.mk

after-clean::
	rm -r obj/ packages/ .theos/
