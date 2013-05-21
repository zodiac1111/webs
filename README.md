webs项目 -- 使用浏览器通过以太网监控电能量采集终端

# 整体说明

文件结构:

	.
	|-- goahead
	|-- out
	|-- package-make
	|-- README.md
	`-- www

* goahead 服务器端代码,c语言编写
* www 客户端代码,html css js
* package-make 生成二进制包,用于web在线升级或者使用ftp上传安装/升级
* out 输出目录

# 简单编译打包安装

编译: make compile

打包: make 或者 make all 或者 make binary

安装: 在out/目录下得到对应tar.gz包,在web界面->功能菜单->系统操作->选择文件->更新

安装(备用): 如果web页面无法打开或者webs程序版本小于1.2,则使用ftp上传,并解压缩,解包.

	make install [ip=<ip地址>] [user=<用户名>] [passwd=<密码>]
	或者
	make install-ha
	或者
	make install-jd

**兼容**:(终端版本1.5版本)需要使用指定编译器编译.注意区别.目前版本经过(终端2.3版本)测试.

# 参考

1. 使用安装说明: 
2. 代码开发相关说明:使用游览器打开 goahead/LINUX/html/index.html 文件以阅读安装和使用说明

# 其他

使用git执行:
	
	git clone --recursive git://github.com/zodiac1111/webs.git

可以从服务器下载整个webs网络服务器项目(包括2个子项目/模块).


