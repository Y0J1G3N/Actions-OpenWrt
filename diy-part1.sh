#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
git clone https://github.com/Y0J1G3N/luci-app-poweroff
sed -i "2i uci set network.lan.ifname='eth0'" lean/default-settings/files/zzz-default-setting
sed -i "3i uci set network.lan.proto='static'" lean/default-settings/files/zzz-default-settings
sed -i "4i uci set network.lan.ipaddr='10.0.0.2'" lean/default-settings/files/zzz-default-settings
sed -i "5i uci set network.lan.netmask='255.255.255.128'" lean/default-settings/files/zzz-default-settings 
sed -i "6i uci set network.lan.gateway='10.0.0.1'" lean/default-settings/files/zzz-default-settings
sed -i "7i uci set network.lan.dns='10.0.0.2'" lean/default-settings/files/zzz-default-settings
sed -i "8i uci set network.lan.delegate='0'" lean/default-settings/files/zzz-default-settings
