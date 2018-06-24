# Shadowsowcks1Click
## 特别感谢
修改自Hao-Luo大佬的SSR脚本！
<br>https://github.com/Hao-Luo/
<br>感谢Teddysun的BBR脚本！
<br>https://github.com/teddysun/
<br>再次修改自maxzh0916的Shadowsowcks1Click脚本！
<br>https://github.com/maxzh0916/
## 说明
本版本为自用版，经过二次修改，精简了大部分配置并做了私有化处理，并不适合其他人使用。若仍想使用请fork后自行修改user-config和usermysql。
<br>省去配置步骤，修改设置一键安装完毕，去除了bbr的安装。
<br>脚本在centos7上测试通过，其他发行版未测试。
## 使用方法
````
wget -N --no-check-certificate https://raw.githubusercontent.com/dovela/Shadowsowcks1Click/master/Shadowsowcks1Click.sh
chmod +x Shadowsowcks1Click.sh
./Shadowsowcks1Click.sh
````
<br>复制上方代码并执行开始安装。
## 脚本功能
````
1.选择安装功能，
  1）安装 SSR
  2）安装 libsodium-1.0.16
2.SSR下载并安装以后会按提示输入配置即可。
  mysql服务器地址：SSR和数据库在同一台服务器输入127.0.0.1，远程节点填写数据库IP。
  SSR节点ID（nodeid）:前端建立节点时的ID。
  是否仅单端口（true | false）:true仅单端口，false单端口多端口共存。
  单端口（0~65535）：单端口号，80、443或者随便想使用的端口。
3.配置完成会关闭iptables、firewalld，大佬请自行设置。
4.默认多端口加密aes-256-cfb，协议auth_chain_a，混淆http_simple
5.默认单端口密码1a2b_3c4t，加密rc4-md5，协议auth_chain_a，混淆http_simple
````
