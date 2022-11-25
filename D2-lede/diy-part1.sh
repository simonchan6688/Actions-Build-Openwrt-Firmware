#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# fw876/helloworld
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# git clone https://github.com/fw876/helloworld package/lean/helloworld
git clone --depth=1 https://github.com/fw876/helloworld.git package/helloworld
# Lienol/openwrt-package
# sed -i '$a src-git lienol https://github.com/Lancenas/lienol-openwrt-package.git' feeds.conf.default
# sed -i '$a src-git lienol https://github.com/xiaorouji/openwrt-package' feeds.conf.default

# oaf
git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter

# jd-dailybonus
# git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/lean/luci-app-jd-dailybonus

# pushbot 
# git clone https://github.com/zzsj0928/luci-app-pushbot package/lean/luci-app-pushbot

# wol plus
# git clone https://github.com/sundaqiang/openwrt-packages/tree/master/luci-app-services-wolplus  package/lean/luci-app-services-wolplus
