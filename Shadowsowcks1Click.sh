#!/bin/bash
[ $(id -u) != "0" ] && { echo "Error: You must be root to run this script"; exit 1; }
install_ssr(){
	clear
	stty erase '^H' && read -p " mysql服务器地址:" ssserver
	stty erase '^H' && read -p " SSR节点ID（nodeid）:" ssnode
	stty erase '^H' && read -p " 是否仅单端口（true | false）:" switch
	stty erase '^H' && read -p " 单端口（0~65535）:" oneport
	clear
  	git clone -b master https://github.com/kuangshao11/Shadowsowcks1Click.git && mv Shadowsowcks1Click shadowsocksr && cd shadowsocksr && chmod +x setup_cymysql.sh && chmod +x ./initcfg.sh && ./setup_cymysql.sh && ./initcfg.sh
	rm -rf Shadowsowcks1Click.sh
	echo 'ssr安装完成'
	sed -i -e "s/ssserver/$ssserver/g" usermysql.json
	sed -i -e "s/ssnode/$ssnode/g" usermysql.json
	sed -i -e "s/switch/$switch/g" user-config.json
	sed -i -e "s/oneport/$oneport/g" user-config.json
	echo 'ssr配置完成'
	chmod +x logrun.sh && ./logrun.sh
	cd /root/
	echo 'ssr已开始运行'
	service iptables stop
	service firewalld stop
	systemctl disable firewalld.service
	chkconfig iptables off
	echo '已关闭iptables、firewalld，如有需要请自行配置。'
	echo '多端口加密aes-256-cfb，协议auth_chain_a，混淆http_simple'
	echo '单端口密码1a2b_3c4t，加密rc4-md5，协议auth_chain_a，混淆http_simple'
}
install_libsodium(){
        clear
        cd /root/
  	wget https://github.com/jedisct1/libsodium/releases/download/1.0.16/libsodium-1.0.16.tar.gz
  	tar xf libsodium-1.0.16.tar.gz && cd libsodium-1.0.16
  	./configure && make -j2 && make install
  	echo /usr/local/lib > /etc/ld.so.conf.d/usr_local_lib.conf
  	cd /root/
  	rm -rf libsodium-1.0.16.tar.gz
	echo 'libsodium安装完成'
}

yum -y install git
yum -y groupinstall "Development Tools"
clear
echo ' 注意：此脚本基于centos7编写，其他系统可能会出问题'
echo ' 1. 安装 SSR'
echo ' 2. 安装 libsodium-1.0.16'
stty erase '^H' && read -p " 请输入数字 [1-2]:" num
 case "$num" in
 	1)
 	install_ssr
	;;
	2)
	install_libsodium
	;;
esac
