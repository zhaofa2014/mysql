共享局域网windocs
\\SUBW-61JMTW\Study

共享给虚拟机
mkdir /mnt/study
mkdir /mnt/cd
mount /dev/cdrom /mnt/cd
tar -zxvf VMwareTools-10.2.5-8068393.tar.gz
vim /etc/fstab             #自动挂载
.host:/study /mnt/Study fuse.vmhgfs-fuse allow_other,defaults 0 0
mount -a
vmware-hgfsclient  #查看宿主机共享给虚拟机的文件


虚拟机共享到宿主机
chmod a+w /mnt/Study   #创建共享目录
echo "/mnt/Study *(rw,async,no_root_squash)" >> /etc/exports    #配置共享目录
exportfs -r    #通过执行如下命令是配置生效
systemctl restart rpcbind    #启动rpcbind服务
systemctl restart nfs-server    #再启动nfs服务
systemctl enable nfs-server    #开机启动nfs
systemctl enable rpcbind   #开机启动rpc

showmount -e localhost   #检查nfs服务是否正常启动



# linux             mount -t nfs 192.168.1.2:/tmp/share  /usr/tomcat/here




手动挂载
mount -t nfs 192.168.0.116:/www /www

