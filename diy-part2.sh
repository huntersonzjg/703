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
sed -i 's/192.168.1.1/192.168.65.73/g' package/base-files/files/bin/config_generate

# Modify default password
sed -i 's#root:::0:99999:7:::#root:$1$jFne/Yvy$T6jwwrT53j.uX7sNsu4.t0:19789:0:99999:7::: #g'  package/base-files/files/etc/shadow
