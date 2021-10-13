
#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. 修改默认 IP
sed -i 's/10.0.0.10/192.168.5.1/g' openwrt/package/base-files/files/bin/config_generate

#2. 设置密码为空
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings

#3. Replace with JerryKuKu’s Argon
#rm openwrt/package/lean/luci-theme-argon -rf

#4.修改插件名称
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' openwrt/package/lean/luci-app-sfe/po/zh-cn/sfe.po

#5.修改主机名称
#set -i '/uci commit system/i\uci set system.@system[0].hostname='LEDE' ' openwrt/package/lean/default-settings/files/zzz-default-settings
