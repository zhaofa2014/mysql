#!/usr/bin/env bash
#修改网卡
vi /etc/sysconfig/network-scripts/ifcfg-ens33
systemctl restart network    #重启网卡
ping www.baidu.com


#VMware设置centos7共享文件夹
#输入命令vmware-hgfsclient查看共享目录是否已经设置成功
vmware-hgfsclient
mkdir -p /root/www/wwwroot/study.economics
echo ".host:/study.economics /root/www/wwwroot/study.economics               fuse.vmhgfs-fuse allow_other,defaults 0 0" >>/etc/fstab
mount -a
#卸载共享目录cd  /mnt/project
umount /root/www/wwwroot/study.economics

#usb
rm -rf /root/os/*
docker cp bt:/www /root/os/
docker cp 3a106d5018f3:/www/server /root/nfs_root/default-node1-pvc-a3093528-ad6f-4780-bc07-d4e7b3481d60
docker cp 76739292214f:/www/server/panel /root/nfs_root/default-node1-pvc-a3093528-ad6f-4780-bc07-d4e7b3481d60
172.18.170.65
scp -r root@172.18.170.65:/root/nfs_root/default-node1-pvc-a3093528-ad6f-4780-bc07-d4e7b3481d60/panel /root/nfs_root/default-master-pvc-9602d420-9bfc-44a3-b08f-90d8c6a00b25/www/server
scp -r root@172.18.170.65:/root/nfs_root/default-node1-pvc-a3093528-ad6f-4780-bc07-d4e7b3481d60/data /root/nfs_root/default-master-pvc-9602d420-9bfc-44a3-b08f-90d8c6a00b25/www/server


scp -r root@172.18.77.122:/root/nfs_root/default-node2-pvc-00e141f3-df56-4869-9333-ea1c071c67e6/www/server/panel /root/nfs_root/default-master-pvc-9602d420-9bfc-44a3-b08f-90d8c6a00b25/www/server
scp -r root@172.18.77.122:/root/nfs_root/default-node2-pvc-00e141f3-df56-4869-9333-ea1c071c67e6/www/server/data /root/nfs_root/default-master-pvc-9602d420-9bfc-44a3-b08f-90d8c6a00b25/www/server


docker cp bt  /www:/root/www
kubectl cp -c  cloud-centso-study www/server/data/mysql:www:/root/zz

#VM VirtualBox设置centos7共享文件夹
#####################使用—>制作镜像->停止容器—>删除容器->上传镜像->运行镜像容器->  每天进步一点点#####################
docker run \
--name bt \
--privileged=true \
--restart always \
--net=host \
-itd \
#-p 21:21 \
#-p 222:22 \
#-p 80:80 \
#-p 443:443 \
#-p 888:888 \
#-p 3306:3306 \
#-p 8888:8888 \
#-p 6379:6379 \
-v /root/www/wwwroot/:www/wwwroot/ \
1872220587/study:economics
#centos:7.8.2003 \
#1872220587/study:economics.v1 \

#USB
docker run \
--name bt \
--privileged=true \
-itd \
--restart always \
--net=host \
#1872220587/bt:centos7.6.1810..Bt7.0.12..tp5.1..v1.1..Study
1872220587/study:money

#-v /root/www:/www \

centos:7.8.2003

docker restart bt #重启
docker exec -it bt /bin/bash   #使用
#服务启动
/etc/init.d/bt start
/etc/init.d/nginx start
/etc/init.d/mysqld start
/etc/init.d/pure-ftpd start
/etc/init.d/php-fpm-56 start
/etc/init.d/php-fpm-70 start
/etc/init.d/php-fpm-71 start
/etc/init.d/php-fpm-72 start
/etc/init.d/php-fpm-73 start
/etc/init.d/php-fpm-74 start
/etc/init.d/redis restart

#yum install -y wget && wget -O install.sh http://download.bt.cn/install/install_6.0.sh && sh install.sh

#k8s
kubectl exec -it   cloud-centos-money-0 /bin/bash
#服务启动
/etc/init.d/bt restart
/etc/init.d/nginx start
/etc/init.d/mysqld start
/etc/init.d/pure-ftpd start
/etc/init.d/php-fpm-56 start
/etc/init.d/php-fpm-70 start
/etc/init.d/php-fpm-71 start
/etc/init.d/php-fpm-72 start
/etc/init.d/php-fpm-73 start
/etc/init.d/php-fpm-74 start
/etc/init.d/redis restart

#日常维护
docker commit  -a "1872220587" -m "针对性学习" bt 1872220587/study:money #提交
docker push  1872220587/study:money #上传
docker restart bt #重启
docker stop bt  #停止
docker rm bt    #删除
docker rm -f  bt #强制删除

#删除锁定文件
chattr -i .user.ini        #解除锁定
chmod -R 777 .user.ini #赋777权限
rm -rf .user.ini          #删除文件

chattr -i btwaf.conf       #解除锁定
chmod -R 777 btwaf.conf #赋777权限
rm -rf btwaf.conf    #删除文件

docker tag 1872220587/study:economics 1872220587/study:economics.
nohup docker push  1872220587/study:economics. &  #上传
docker pull  1872220587/study:economics  #下载

#删除所有未被容器使用的镜像:
docker image prune -a
#删除所有停止运行的容器:
docker container prune
#删除所有未被挂载的卷:
docker volume prune

#解压
zip -rP Zhaofa00 shelimai.com.zip shelimai.com
unzip panel.zip
unzip data.zip

#进入镜像文件在宿主机操作
cd /var/lib/docker/overlay2/bb7dd38501fc633015a5beb16dedf96ee74ee7f22678a52b471cf9c7afa43ecf/diff/www/wwwroot/study.economics

kubectl dekete -f https://kuboard.cn/install-script/k8s-dashboard/auth.yaml
