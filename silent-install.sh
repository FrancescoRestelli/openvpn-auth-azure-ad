IP=$(ifconfig eth0 |grep -v inet6|grep inet|awk '{ print $2 }')
MASK=$(ifconfig eth0 |grep -v inet6|grep inet|awk '{ print $4 }')
export AUTO_INSTALL=y 
export PORT_CHOICE=1 
export PROTOCOL_CHOICE=1
export DNS=1
export CLIENT=$1
export OPENVPNDEB="openvpn_2.4.9-2ubuntu1_amd64.deb"
export DISABLEREDIRECT=1
export CLIENTROUTE="push \"route ${IP::-1}0 $MASK\"\n"
export NATHACK=1
./openvpn-install.sh

