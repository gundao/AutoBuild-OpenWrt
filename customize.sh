#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
#sed -i 's/192.168.1.1/192.168.5.1/g' openwrt/package/base-files/files/bin/config_generate

#2. Clear the login password
#sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings

#3. Replace with JerryKuKu’s Argon
#rm openwrt/package/lean/luci-theme-argon -rf
cd package && git clone https://github.com/kenzok8/small-package
cd small-package && git clone https://github.com/cokebar/openwrt-vlmcsd.git && git clone https://github.com/cokebar/luci-app-vlmcsd.git && git clone https://github.com/gundao/rt8125.git && rm -rf nftables && rm -rf nginx && rm -rf miniupnpd && rm -rf luci-lib-ipkg && rm -rf uwsgi
