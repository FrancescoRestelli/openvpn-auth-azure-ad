#!/bin/bash
AAD_TOKEN_AUTHORITY="https://login.microsoftonline.com/$(cat /etc/azure_tenantid)" AAD_CLIENT_ID="$(cat /etc/azure_clientid)" /usr/bin/python3 /usr/local/openvpn-auth-azure-ad/openvpn-auth-azure-ad.py --auth-token --remember-user --ovpn-socket /dev/openvpn --verify-common-name
