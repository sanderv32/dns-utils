#!/bin/sh

echo "********************************************************************************"
echo "** Contents /etc/hosts:                                                       **"
echo "********************************************************************************"
cat /etc/hosts
echo

echo "********************************************************************************"
echo "** Contents /etc/resolv.conf:                                                 **"
echo "********************************************************************************"
cat /etc/resolv.conf
echo

echo "********************************************************************************"
echo "** Interface settings:                                                        **"
echo "********************************************************************************"
ifconfig -a
echo

sleep infinity
