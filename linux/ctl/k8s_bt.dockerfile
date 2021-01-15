FROM 1872220587/k8s:7.8.2003.bt.7.4.5.shelimai.com
MAINTAINER 1872220587
ENTRYPOINT
CMD ["/etc/init.d/bt","restart"]
CMD ["/etc/init.d/httpd","restart"]
CMD ["/etc/init.d/mysqld","restart"]
CMD ["/etc/init.d/pure-ftpd","restart"]
CMD [" /etc/init.d/redis","restart"]
CMD [" /etc/init.d/php-fpm-56","restart"]
CMD [" /etc/init.d/php-fpm-71","restart"]
CMD [" /etc/init.d/php-fpm-74","restart"]



#docker build -f k8s_bt.dockerfile -t 1872220587/k8s:7.8.2003.bt.7.4.5.shelimai.com.v.2 .

