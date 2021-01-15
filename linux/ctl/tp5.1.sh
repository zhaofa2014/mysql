#!/bin/bash
########工作一小时 休息10分钟 每天进步一点点#############
#QQ群：264744083  文件夹
#ide—>phpstorm & VSCode & HBuilderX & WebStorm & Sublime Text 3 & Dreamweaver    高低搭配  ftp上传
#浏览器-> 360极速浏览器  私有账号
#私有代码仓库—>       https://gitee.com/zhaofafa/projects
#私有镜像仓库->       https://hub.docker.com/
#服务器docker容器—>  http://106.15.73.60:8888
#百度云自动备份—>     https://pan.baidu.com/s/1IEuk_DlUnAroyrgFhmG70g 提取码: 5k62

#################tp5.1安装#################
docker exec -it tp5.1 /bin/bash   #使用

cd /www/wwwroot
composer create-project topthink/think=5.1.x-dev tp5.zhaofa.love
cd tp5.zhaofa.love
composer require topthink/think-swoole=2.0.*

#####################使用—>制作镜像->停止容器—>删除容器->上传镜像->运行镜像容器->  每天进步一点点
docker run \
--name tp5.1 \
-itd \
--privileged=true \
-p 21:21 \
-p 80:80 \
-p 443:443 \
-p 888:888 \
-p 8888:8888 \
-p 9501:9501 \
-p 9508:9508 \
1872220587/bt:centos7.6.1810..Bt7.0.12..tp5.1..v..Study
docker exec -it tp5.1 /bin/bash   #使用
bt 1
#服务启动
/etc/init.d/nginx start
/etc/init.d/mysqld start
/etc/init.d/pure-ftpd start
/etc/init.d/php-fpm-56 start
/etc/init.d/php-fpm-73 start
/etc/init.d/redis restart

#日常学习
docker commit  -a "1872220587" -m "tp5.1学习" tp5.1 1872220587/bt:centos7.6.1810..Bt7.0.12..tp5.1..v..Study   #提交
docker stop tp5.1  #停止
docker rm tp5.1    #删除
docker push 1872220587/bt:centos7.6.1810..Bt7.0.12..tp5.1..v..Study   #上传















