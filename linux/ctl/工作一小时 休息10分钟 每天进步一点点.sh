#!/bin/bash
########工作一小时 休息10分钟 每天进步一点点#############
#QQ群：264744083  文件夹
#ide—>phpstorm & VSCode & HBuilderX & WebStorm & Sublime Text 3 & Dreamweaver    高低搭配  ftp上传
#浏览器-> 360极速浏览器  私有账号
#私有代码仓库—>       https://gitee.com/zhaofafa/projects
#私有镜像仓库->       https://hub.docker.com/
#服务器docker容器—>  http://106.15.73.60:8888
#百度云自动备份—>     https://pan.baidu.com/s/1IEuk_DlUnAroyrgFhmG70g 提取码: 5k62

#环境k8s集群
############# 增  #############
##########使用—>制作镜像->停止容器—>删除容器->上传镜像->运行镜像容器->  每天进步一点点###########
docker run \
--name tp5.1 \
--privileged=true \
--restart always \
-itd \
-p 21:21 \
-p 80:80 \
-p 443:443 \
-p 888:888 \
-p 3306:3306 \
-p 6379:6379 \
-p 8888:8888 \
-p 9501:9501 \
-p 9508:9508 \
-p 18306:18306 \
-p 18307:18307 \
-v /mnt/wwwroot:/www/wwwroot \
1872220587/bt:centos7.6.1810..Bt7.0.12..tp5.1..v1.1..Study
docker exec -it tp5.1 /bin/bash   #使用
bt 1
#服务启动
/etc/init.d/nginx start
/etc/init.d/mysqld start
/etc/init.d/pure-ftpd start
/etc/init.d/php-fpm-56 start
/etc/init.d/php-fpm-73 start
/etc/init.d/redis restart

#-v /mnt/wwwroot:/www/wwwroot \
#本地windocs目录->共享给局域网windocs->共享给虚拟机linux->docker -v   <—>nfs.sh


############# 改  #############
#################tp5.1镜像安装 项目初始化#################
#docker exec -it tp5.1 /bin/bash   #使用

cd /www/wwwroot
rm -rf tp5.zhaofa.love
#mkdir tp5.zhaofa.love
git clone https://gitee.com/heyingmin/xhcms2.git tp5.zhaofa.love
composer create-project topthink/think=5.1.x-dev tp5.zhaofa.love
sudo chmod  777 tp5.zhaofa.love/*
cd /www/wwwroot/tp5.zhaofa.love
composer require topthink/think-swoole=2.0.*

#所有输出都被重定向到一个名为nohup.out的文件中
command  >  out.file  2>&1  & 
nohup command > nohup.out 2>&1 &
nohup php think swoole &
nohup php think swoole:server &

nohup php easyswoole start &

#日常学习
docker commit  -a "1872220587" -m "tp5.1学习" tp5.1 1872220587/bt:centos7.6.1810..Bt7.0.12..tp5.1..v1.0..Study   #提交'''

docker push 1872220587/bt:centos7.6.1810..Bt7.0.12..tp5.1..v1.1..Study   #上传



############# 删  #############
docker restart tp5.1  #重启
docker stop tp5.1  #停止
docker rm tp5.1    #删除


#删除所有未被容器使用的镜像:
docker image prune -a
#删除所有停止运行的容器:
docker container prune
#删除所有未被挂载的卷:
docker volume prune
#删除所有网络:
docker network prune
#删除 docker 所有资源:
docker system prune



