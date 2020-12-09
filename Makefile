ARCHS = armv7 arm64 arm64e
TARGET = iphone:14.1:8.0
FINALPACKAGE = 1
include $(THEOS)/makefiles/common.mk

TOOL_NAME = SuccessionCLIhelper

SuccessionCLIhelper_PRIVATE_FRAMEWORKS = SpringBoardServices
SuccessionCLIhelper_FRAMEWORKS = UIKit Foundation
SuccessionCLIhelper_FILES = main.m
SuccessionCLIhelper_CFLAGS = -fobjc-arc
SuccessionCLIhelper_CODESIGN_FLAGS = -Sent.plist
SuccessionCLIhelper_LDFLAGS_FLAGS = -v

include $(THEOS_MAKE_PATH)/tool.mk