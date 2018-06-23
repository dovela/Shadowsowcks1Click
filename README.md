# Shadowsowcks1Click
## 特别感谢
修改自Hao-Luo大佬的SSR脚本！
<br>https://github.com/Hao-Luo/
<br>感谢Teddysun的BBR脚本！
<br>https://github.com/teddysun/
## 说明
本版本为自用版，经过二次修改，精简了大部分配置并做了私有化处理，并不适合其他人使用。若仍想使用请fork后自行修改user-config和usermysql。
<br>添加更多自定义设置，省去配置步骤，修改设置一键安装完毕。
<br>脚本在centos7上测试通过，其他发行版未测试。
## 使用方法
````
wget -N --no-check-certificate https://raw.githubusercontent.com/kuangshao11/Shadowsowcks1Click/master/Shadowsowcks1Click.sh
chmod +x Shadowsowcks1Click.sh
./Shadowsowcks1Click.sh
````
<br>复制上方代码并执行开始安装。
## 脚本功能
````
1.检查是否安装了git、libsodium（可能会有点慢）。
2.选择安装功能，
  1）SSR
  2）libsodium
3.SSR下载并安装以后会按提示输入配置即可。
mysql服务器地址：SSR和数据库在同一台服务器输入127.0.0.1，远程节点填写数据库IP。
SSR节点ID（nodeid）:前端建立节点时的ID。
4.配置完成会关闭iptables、firewalld，大佬请自行设置。
````
