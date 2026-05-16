#!/bin/bash

echo "=============================="
echo " SECURITY CHECKS"
echo "=============================="

echo ""
echo "Firewall status:"
sudo ufw status

echo ""
echo "Failed Login Attempts:"
sudo grep "Failed" /var/log/auth.log
