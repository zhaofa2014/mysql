#共享局域网windocs
\\SUBW-61JMTW\Study
#设置任何人 无密码

#共享给虚拟机
mkdir /mnt/wwwroot
mkdir /mnt/cd
mount /dev/cdrom /mnt/cd
tar -zxvf VMwareTools-10.2.5-8068393.tar.gz
./vmware-install.pl #执行安装程序
vim /etc/fstab             #自动挂载

cat << EOM > /etc/fstab
#
# /etc/fstab
# Created by anaconda on Sat Aug 24 08:57:51 2019
#
# Accessible filesystems, by reference, are maintained under '/dev/disk'
# See man pages fstab(5), findfs(8), mount(8) and/or blkid(8) for more info
#
/dev/mapper/centos-root /                       xfs     defaults        0 0
UUID=81cb526e-69aa-4358-a8a1-5627e772f9b4 /boot                   xfs     defaults        0 0
#/dev/mapper/centos-swap swap                    swap    defaults        0 0
.host:/wwwroot /mnt/wwwroot fuse.vmhgfs-fuse allow_other,defaults 0 0
EOM
vmware-hgfsclient  #查看宿主机共享给虚拟机的文件
mount -a



#虚拟机共享到宿主机->nfs
chmod a+w /mnt/wwwroot   #创建共享目录
echo "/mnt/wwwroot *(rw,async,no_root_squash)" >> /etc/exports    #配置共享目录
exportfs -r    #通过执行如下命令是配置生效
systemctl restart rpcbind    #启动rpcbind服务
systemctl restart nfs-server    #再启动nfs服务
systemctl enable nfs-server    #开机启动nfs
systemctl enable rpcbind   #开机启动rpc

showmount -e localhost   #检查nfs服务是否正常启动


手动挂载
mount -t nfs 192.168.0.116:/wwwroot /wwwroot

