
export AUTO_INSTALL=y 
export PORT_CHOICE=1 
export PROTOCOL_CHOICE=1
export DNS=1
export CLIENT=$1
export OPENVPNDEB="openvpn_2.4.9-2ubuntu1_amd64.deb"
export DISABLEREDIRECT=1
export CLIENTROUTE="push \"route 168.63.129.16 255.255.255.255\""
export NATHACK=1
./openvpn-install.sh

