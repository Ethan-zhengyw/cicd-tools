#!/bin/bash

sed -i "s/%%CONTAINER_IP%%/$(ifconfig eth0 | grep inet | grep -v inet6 | awk '{print $2}')/g" /etc/shadowsocks.json
/usr/bin/ssserver -c /etc/shadowsocks.json
