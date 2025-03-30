#!/bin/bash
#
git clone -b main https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall
git clone -b main https://github.com/xiaorouji/openwrt-passwall2.git package/passwall2
#
echo 'CONFIG_PACKAGE_luci-app-passwall2=y' >>.config
echo 'CONFIG_PACKAGE_luci-app-passwall2_INCLUDE_Haproxy=y' >>.config
echo 'CONFIG_PACKAGE_luci-app-passwall2_INCLUDE_Simple_Obfs=y' >>.config
echo 'CONFIG_PACKAGE_luci-app-passwall2_INCLUDE_SingBox=y' >>.config
echo 'CONFIG_PACKAGE_luci-app-passwall2_INCLUDE_V2ray_Plugin=y' >>.config
echo 'CONFIG_PACKAGE_luci-app-passwall2_Nftables_Transparent_Proxy=y' >>.config
echo "CONFIG_PACKAGE_luci-app-passwall2_INCLUDE_Geoview=y" >> .config
echo 'CONFIG_PACKAGE_luci-app-passwall2_INCLUDE_V2ray_Geodata=y' >>.config
echo 'CONFIG_PACKAGE_luci-app-passwall2_INCLUDE_V2ray_Geoview=y' >>.config
echo 'CONFIG_PACKAGE_luci-app-passwall2_INCLUDE_Xray=y' >>.config
echo 'CONFIG_PACKAGE_luci-i18n-passwall2-zh-cn=y' >>.config
echo 'CONFIG_PACKAGE_shadowsocksr-libev-ssr-local=y' >>.config
echo 'CONFIG_PACKAGE_shadowsocksr-libev-ssr-redir=y' >>.config
echo 'CONFIG_PACKAGE_v2dat=y' >>.config
echo 'CONFIG_PACKAGE_v2ray-geoip=y' >>.config
echo 'CONFIG_PACKAGE_v2ray-geosite=y' >>.config
echo 'CONFIG_PACKAGE_v2ray-plugin=y' >>.config
echo 'CONFIG_PACKAGE_xray-core=y' >>.config
#passwall2
sed -i '/CONFIG_PACKAGE_$(PKG_NAME)_Iptables_Transparent_Proxy/d' ./package/passwall2/luci-app-passwall2/Makefile
sed -i '/config PACKAGE_$(PKG_NAME)_Iptables_Transparent_Proxy/,+15d' ./package/passwall2/luci-app-passwall2/Makefile
sed -i '/CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_Shadowsocks_Libev_Client/d' ./package/passwall2/luci-app-passwall2/Makefile
sed -i '/CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_Shadowsocks_Libev_Server/d' ./package/passwall2/luci-app-passwall2/Makefile
sed -i '/CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_ShadowsocksR_Libev_Client/d' ./package/passwall2/luci-app-passwall2/Makefile
sed -i '/CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_ShadowsocksR_Libev_Server/d' ./package/passwall2/luci-app-passwall2/Makefile
sed -i '/config PACKAGE_$(PKG_NAME)_INCLUDE_Shadowsocks_Libev_Client/,+10d' ./package/passwall2/luci-app-passwall2/Makefile
sed -i '/config PACKAGE_$(PKG_NAME)_INCLUDE_ShadowsocksR_Libev_Client/,+10d' ./package/passwall2/luci-app-passwall2/Makefile
