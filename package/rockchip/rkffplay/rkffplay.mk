RKFFPLAY_SITE = $(TOPDIR)/../app/rkffplay
RKFFPLAY_SITE_METHOD = local
RKFFPLAY_INSTALL_STAGING = YES

RKFFPLAY_CONF_OPTS += -DCMAKE_INSTALL_STAGING=$(STAGING_DIR)

$(eval $(cmake-package))
