处理思路：
一：查看是否安装mysql服务（没有安装则先安装）
1.查看mysql已安装的服务rpm -qa|grep -i mysql
2.使用yum -y remove + 包名依次卸载
3.https://www.cnblogs.com/zelzzz/p/9803347.html
4.
二：再重新安装mysql
注意：查资料发现是CentOS 7 版本将MySQL数据库软件从默认的程序列表中移除，用mariadb代替了。
	安装命令：# yum install mariadb-server mariadb 
	mariadb数据库的相关命令是：
systemctl start mariadb  #启动MariaDB
systemctl stop mariadb  #停止MariaDB
systemctl restart mariadb  #重启MariaDB
systemctl enable mariadb  #设置开机启动
三： 启动mysql服务器时候出错
错误如下：
Job for mysqld.service failed because the control process exited with error code. See "systemctl status mysqld.service" and "journalctl -xe" for details.
第一步：先查看日志！！！
找到mysql服务的日志文件，每次启动时候会将报错情况存在mysql的日志里，根据日志的ERROR去百度搜索
日志路径：一般存在/var/log/mariadb路径下（这是mariadb的，mysql的应该会在/var/log/mysql）
mariadb常见的问题是ib_logfile1或者ib_logfile0的问题
处理方法是直接把这两个文件重命名，mariadb启动时候会自动生成！


