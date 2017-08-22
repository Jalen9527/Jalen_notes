它的启动入口为start.php。 用linux切换到这个目录进行 php start.php star 启动操作

启动
以debug（调试）方式启动

php start.php start

以daemon（守护进程）方式启动

php start.php start -d

停止
php start.php stop

重启
php start.php restart

平滑重启
php start.php reload

查看状态
php start.php status

## linux 建立连接测试 telnet 127.0.0.1 8282     8282 为端口号 在本服务器测试的话直接用 127.0.0.1 否则就输入相对的服务器ip地址

只要接受客户端的消息文件为 \Applications\YourApp\Events.php 文件 具体见文件内的操作方法
主动给客户端返回消息的文件是 \Gateway.php 类文件

其余文件不要动！
其余文件不要动！
其余文件不要动！
