#!/bin/bash
# 编写hello world脚本
#docker pull centos
# docker ps
# docker run --name centos7.6.1810 -itd centos:centos7.6.1810 /bin/bash              yum install -y wget && wget -O install.sh http://download.bt.cn/install/install_6.0.sh && sh install.sh
# docker attach 89f5640e6177
kubectl get pods --all-namespaces -o wide
kubectl get svc --all-namespaces -o wide
kubectl exec -it cloud-jenkins-0 /bin/bash                cloud-centosbt-0  cloud-centoss-0 cloud-jenkins-0
kubectl exec -it cloud-gitlabci-0 /bin/bash


docker exec -it 8426c6e42112 /bin/bash 
/etc/init.d/nginx restart 
/etc/init.d/mysqld restart 
/etc/init.d/pure-ftpd restart 
/etc/init.d/redis start
exit








docker exec -it af22f2b946b6 /bin/bash
docker stop a0e1c765f24a
docker rm a0e1c765f24a

# docker commit 08fc1b93c74b 1872220587/centos:zhaofav1.0
# docker push 1872220587/k8s:centos7.6.1810Bt6.9.9v1.0


# #################################################################################制作镜像
# docker run -itd -p 8888:8888 --name entos7.6.1810Bt6.9.0  centos:7.6.1810 /bin/bash
# docker run -itd -p 8888:8888 --name centos7.6.1810Bt6.9.9  1872220587/centos:zhaofav2.0  /bin/bash
# docker run -itd -p 55:55 --name centos7.6.1810Bt6.9.9  1872220587/centos:centos7.6.1810Bt6.9.0
# docker attach d7d1e3ea298b
# yum install -y wget && wget -O install.sh http://download.bt.cn/install/install_6.0.sh && sh install.sh
# docker commit d7d1e3ea298b 1872220587/centos:zhaofav2.0
# docker commit  -a "1872220587" -m "centos" 49518a016356 1872220587/centos:zhaofav3.0
# docker push 1872220587/centos:zhaofav3.0

# docker tag 1872220587/centos:zhaofav1.0 1872220587/centos:centos7.6.1810Bt6.9.0


docker run --name centos7.6.1810Bt6.9.9v1.0 -itd --privileged=true -p 80:80 -p 443:443 -p 888:888 -p 8888:8888 -p 3306:3306 1872220587/bt:centos7.6.1810..Bt6.9.9..tp5.1..v3.0/bin/bash
docker exec -it centos7.6.1810Bt6.9.9v1.0 /bin/bash 

#################################################################################制作镜像->停止容器—>删除容器->上传镜像->运行镜像容器
docker commit  -a "1872220587" -m "centos" 8426c6e42112 1872220587/bt:centos7.6.1810..Bt6.9.9..311ebh..v2.0   #  1872220587/k8s:centos7.6.1810Bt6.9.9v2.0
# docker stop 823fd514b891
# docker rm 823fd514b891  
docker push 1872220587/bt:centos7.6.1810..Bt6.9.9..311ebh..v2.0
# docker run --name centos7.6.1810Bt6.9.9v1.0 -itd -p 80:80 -p 443:443 -p 888:888 -p 8888:8888 1872220587/k8s:centoslatestBt6.9.9v2.0
docker run --name centos7.6.1810Bt6.9.9v1.0 -itd --privileged=true -p 8888:8888 1872220587/k8s:centoslatestBt6.9.9v6.0
docker images






                                                                 
#####################使用—>制作镜像->停止容器—>删除容器->上传镜像->运行镜像容器->  每天进步一点点
# docker run --name centos7.6.1810Bt6.9.9..10.17 -itd --privileged=true -p 21:21 -p 80:80 -p 443:443 -p 888:888 -p 8888:8888 -p 3306:3306 1872220587/bt:centos7.6.1810Bt6.9.9 /bin/bash
# docker exec -it centos7.6.1810Bt6.9.9..10.17 /bin/bash   #使用
# bt 1 
# bt 11

#docker commit  -a "1872220587" -m "centos" centos7.6.1810Bt6.9.9..10.17 1872220587/study:centos7.6.1810Bt6.9.9..10.17   #提交
#docker stop centos7.6.1810Bt6.9.9..10.17  #停止
#docker rm centos7.6.1810Bt6.9.9..10.17    #删除
# docker push 1872220587/study:centos7.6.1810Bt6.9.9..10.17   #上传





































#删除所有未被容器使用的镜像:
docker image prune -a
#删除所有停止运行的容器:
docker container prune
docker commit  -a "1872220587" -m "英皇策略|centos-|Bt6.9.9" 1dba094b1cc1 1872220587/bt:centos7.6.1810.Bt6.9.9.yhcl.v1.0 
docker push 1872220587/bt:centos7.6.1810.Bt6.9.9.yhcl.v1.0



docker run -itd --privileged=true --name 311ebh -p 80:80 -p 21:21 -p 443:443 -p 888:888 -p 3306:3306 -p 8888:8888  1872220587/bt:centos7.6.1810..Bt6.9.9..311ebh..v2.0 /bin/bash

















 yum -y install openssh-server
 mkdir /var/run/sshd
 ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key
ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key
# 指定root密码
/bin/echo 'root:123456'|chpasswd
/bin/sed -i 's/.*session.*required.*pam_loginuid.so.*/session optional pam_loginuid.so/g' /etc/pam.d/sshd
bin/echo -e "LANG=\"en_US.UTF-8\"" > /etc/default/local
EXPOSE 22
usr/sbin/sshd -D
————————————————