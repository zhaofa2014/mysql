#!/bin/bash
########工作一小时 休息10分钟 每天进步一点点#############
#QQ群：264744083  文件夹
#ide—>phpstorm & VSCode & HBuilderX & WebStorm & Sublime Text 3 & Dreamweaver    高低搭配  ftp上传
#浏览器-> 360极速浏览器  私有账号
#私有代码仓库—>       https://gitee.com/zhaofafa/projects
#私有镜像仓库->       https://hub.docker.com/
#服务器docker容器—>  http://106.15.73.60:8888
#百度云自动备份—>     https://pan.baidu.com/s/1IEuk_DlUnAroyrgFhmG70g 提取码: 5k62

##################311ebh安装#################
#docker exec -it 311ebh /bin/bash   #使用
#
####初始化###
#cd /www/wwwroot
#rm -rf tp5.zhaofa.love
#mkdir tp5.zhaofa.love
#sudo chmod  777 tp5.zhaofa.love
#
#
##git clone https://gitee.com/zhaofafa/swoole.zhaofa.love.git
#composer create-project topthink/think=5.1.x-dev
#cd /www/wwwroot/tp5.zhaofa.love
#composer require topthink/think-swoole=2.0.*
#
#
##所有输出都被重定向到一个名为nohup.out的文件中
#nohup command > nohup.out 2>&1 &
#nohup php think swoole &
#nohup php think swoole:server &



#####################使用—>制作镜像->停止容器—>删除容器->上传镜像->运行镜像容器->  每天进步一点点
docker run \
--name 311ebh \
--privileged=true \
--restart always \
-itd \
-p 21:21 \
-p 80:80 \
-p 443:443 \
-p 888:888 \
-p 3306:3306 \
-p 8888:8888 \
1872220587/bt:centos7.6.1810.Bt6.9.9.311ebh.v2.0
docker exec -it 311ebh /bin/bash   #使用
bt 1
#-v /www/wwwroot:/www/wwwroot
#-v /www/server/data:/www/server/data
#-v /www/backup:/www/backup
#预约系统网站https协议
#其他网址cdn加速
#服务启动
/etc/init.d/nginx restart
/etc/init.d/mysqld restart
/etc/init.d/pure-ftpd restart
/etc/init.d/php-fpm-56 restart
/etc/init.d/php-fpm-73 restart
/etc/init.d/redis restart

#日常维护
docker commit  -a "1872220587" -m "昆明三一一医院项目" 311ebh 1872220587/bt:centos7.6.1810.Bt6.9.9.311ebh.v2.0   #提交
#docker restart 311ebh
#docker stop 311ebh  #停止
#docker rm 311ebh    #删除
docker push 1872220587/bt:centos7.6.1810.Bt6.9.9.311ebh.v2.0  #上传




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

