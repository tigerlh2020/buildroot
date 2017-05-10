# Rockchip's libcutils porting from Android
# Author : Cody Xie <cody.xie@rock-chips.com>

ifeq ($(BR2_PACKAGE_RK3036_ECHO),y)
LIBCUTILS_SITE = $(TOPDIR)/../external/libcutils
LIBCUTILS_SITE_METHOD = local
else
LIBCUTILS_SITE = $(call qstrip, ssh://git@10.10.10.78:2222/argus/externals/libcutils.git)
LIBCUTILS_SITE_METHOD = git
LIBCUTILS_SOURCE = libcutils-${LIBCUTILS_VERSION}.tar.gz
LIBCUTILS_FROM_GIT = y
endif
LIBCUTILS_VERSION = 2c61c38
LIBCUTILS_INSTALL_STAGING = YES
LIBCUTILS_DEPENDENCIES += liblog

$(eval $(cmake-package))
