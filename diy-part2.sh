#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i "2i uci set network.lan.ifname='eth0'" package/lean/default-settings/files/zzz-default-setting
sed -i "3i uci set network.lan.proto='static'" package/lean/default-settings/files/zzz-default-settings
sed -i "4i uci set network.lan.ipaddr='10.0.0.2'" package/lean/default-settings/files/zzz-default-settings
sed -i "5i uci set network.lan.netmask='255.255.255.128'" package/lean/default-settings/files/zzz-default-settings 
sed -i "6i uci set network.lan.gateway='10.0.0.1'" package/lean/default-settings/files/zzz-default-settings
sed -i "7i uci set network.lan.dns='10.0.0.2'" package/lean/default-settings/files/zzz-default-settings
sed -i "8i uci set network.lan.delegate='0'" package/lean/default-settings/files/zzz-default-settings
