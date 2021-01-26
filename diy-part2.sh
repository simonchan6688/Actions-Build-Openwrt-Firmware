#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate
# modify linux kernel
sed -i '5.4/4.9/g' target/linux/ramips/Makefile

# modify default password
sed -i 's/root::0:0:99999:7:::/root:$1$xYjM6fLJ$5x0lnNu29mqp9h1TYKV961:18620:0:99999:7:::/g' package/base-files/files/etc/shadow
# modify Jd-dailybonus autoruntime
sed -i 's/t, t .. ":05"/t, t .. ":02"/g' package/lean/luci-app-jd-dailybonus/luasrc/model/cbi/jd-dailybonus/client.lua
sed -i 's/5 /2 /g' package/lean/luci-app-jd-dailybonus/root/usr/share/jd-dailybonus/newapp.sh
