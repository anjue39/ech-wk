include $(TOPDIR)/rules.mk
PKG_NAME:=luci-app-ech-workers
PKG_VERSION:=1.2.0
PKG_RELEASE:=1
LUCI_TITLE:=LuCI for ECH Workers K3-Special
LUCI_DEPENDS:=+curl +ca-certificates
LUCI_PKGARCH:=all
include $(TOPDIR)/feeds/luci/luci.mk
define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/bin $(1)/etc/init.d $(1)/usr/lib/lua/luci/model/cbi
	$(INSTALL_BIN) ./root/usr/bin/ech-workers $(1)/usr/bin/ech-workers
	$(INSTALL_BIN) ./root/etc/init.d/ech-workers $(1)/etc/init.d/ech-workers
	$(CP) ./root/usr/lib/lua/luci/model/cbi/*.lua $(1)/usr/lib/lua/luci/model/cbi/
endef
$(eval $(call BuildPackage,$(PKG_NAME)))
