#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
#sed -i 's/192.168.1.1/192.168.5.1/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/0.openwrt.pool.ntp.org/ntp.ntsc.ac.cn/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/1.openwrt.pool.ntp.org/cn.ntp.org.cn/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/2.openwrt.pool.ntp.org/time.pool.aliyun.com/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/3.openwrt.pool.ntp.org/time1.cloud.tencent.com/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/UTC/CST-8/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/option leasetime       12h/option leasetime    12h\n    list dhcp_option 6,192.168.1.218/g' /home/gundao/openwrt/package/network/services/dnsmasq/files/dhcp.conf

#2. Clear the login password
#sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings

#3. Replace with JerryKuKu’s Argon
#rm openwrt/package/lean/luci-theme-argon -rf

