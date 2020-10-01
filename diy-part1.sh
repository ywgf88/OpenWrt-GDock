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
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default


# Add a feed source
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default


#Clone Lienol source code
git clone https://github.com/kenzok8/openwrt-packages.git  package/diy-packages
git clone https://github.com/kenzok8/small.git  package/openwrt-small

#添加jerrykuku
sed -i '$a src-git jerryk https://github.com/jerrykuku/openwrt-package' feeds.conf.default

# 删除默认argon主题，并下载新argon主题
#rm -rf ./package/lean/luci-theme-argon
