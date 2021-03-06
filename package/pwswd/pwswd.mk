################################################################################
#
# pwswd
#
################################################################################

PWSWD_VERSION = master
PWSWD_SITE = $(call github,gcwnow,pwswd,$(PWSWD_VERSION))
PWSWD_DEPENDENCIES = alsa-lib libpng libini

PWSWD_MAKE_ENV = CFLAGS="$(TARGET_CFLAGS)" LDFLAGS="$(TARGET_LDFLAGS)" \
				 CROSS_COMPILE="$(TARGET_CROSS)" PREFIX=/usr \
				 CONFIG=default

define PWSWD_BUILD_CMDS
	$(PWSWD_MAKE_ENV) $(MAKE) -C $(@D)
endef

define PWSWD_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/pwswd $(TARGET_DIR)/usr/sbin/pwswd
	$(INSTALL) -D -m 0644 $(@D)/pwswd-gcw0.conf $(TARGET_DIR)/etc/pwswd.conf
	$(INSTALL) -D -m 0755 package/pwswd/S91pwswd.sh $(TARGET_DIR)/etc/init.d/S91pwswd.sh
endef

$(eval $(generic-package))
