#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. 修改默认的IP
sed -i 's/192.168.1.1/10.0.0.10/g' openwrt/package/base-files/files/bin/config_generate

#2. 修改主机名
sed -i '/uci commit system/i\uci set system.@system[0].hostname='Soft_Routes'' openwrt/package/lean/default-settings/files/zzz-default-settings

#3. 设置密码为空
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings

#4. Replace with JerryKuKu’s Argon
#rm openwrt/package/lean/luci-theme-argon -rf

#5. 修改插件名字
#sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' openwrt/package/lean/luci-app-sfe/po/zh-cn/sfe.po
