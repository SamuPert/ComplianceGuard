#!/bin/sh
bgpctl network flush
cat /opt/src/ipv4.txt|while read ip;do bgpctl network add $ip localpref 120 community NO_EXPORT community BLACKHOLE; done
cat /opt/src/ipv6.txt|while read ip;do bgpctl network add $ip localpref 120 community NO_EXPORT community BLACKHOLE; done
