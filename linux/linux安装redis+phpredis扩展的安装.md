前序：

LINUX环境下：
先安装redis  
开启redis服务器 参考链接：https://www.cnblogs.com/dump/p/8543614.html
安装完毕之后配置redis配置文件（开机启动）：https://blog.csdn.net/zhezhebie/article/details/73470134

再下载php redis的扩展 参考链接：https://segmentfault.com/a/1190000009422920
当执行报错phpize报错时候处理：
 
使用：/usr/bin/phpize
	出现下面错误提示
	Can't find PHP headers in /usr/include/php
	The php-devel package is required for use of this command
	yum install php-devel 解决

make 安装完之后
php.ini 文件添加 一句：extension = redis.so
重启服务器。
end




操作：
查看redis后台进程有没有存在：ps -ef |grep redis 

检测6379端口是否在监听netstat -lntp | grep 6379

停止redis:使用客户端 redis-cli shutdown
