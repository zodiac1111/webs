****如果无法看到换行,请用UE打开****
适用于hl3104jd/ha 2.0以上版本.
安装步骤：

1 添加看门狗
  修改终端 /mnt/nor/conf/watchdog.conf 看门狗配置文件，在其末尾添加一行：

	once /mnt/nor/bin/webs webs

2.A 通过网页界更新
	* 登陆网页
	* 右上角功能菜单(红色)
	* 系统操作 选项卡
	* 序号6:更行webs程序
	* 选择对应的webs-binary-hl3104ha(jd).tar.gz包,上传
	* 等待返回ok 
	* 按照提示清空浏览器缓存,并刷新页面.
	* 完成

2.B 通过ftp上传(在无法使用网页上传时)
  
2.B.1 	根据终端类型,将 webs-binary-hl3104ha(jd).tar 文件通过ftp上传到终端 /mnt/nor 目录下.
	使用命令 ls /mnt/nor/webs-binary-hl3104ha(jd).tar 显示刚才上传的文件则正确.
2.B.2 解压
 	通过telnet登录到终端,根据终端类型,运行(以下命令全部在一行上输入,没有换行,可以复制/粘贴)：

hl3104ha终端:

	killall webs ;gunzip -d /mnt/nor/webs-binary-hl3104ha.tar.gz && tar -xvf /mnt/nor/webs-binary-hl3104ha.tar -C / && rm /mnt/nor/webs-binary-hl3104ha.tar.gz && reboot

hl3104jd终端:

	killall webs ;gunzip -d /mnt/nor/webs-binary-hl3104jd.tar.gz && tar -xvf /mnt/nor/webs-binary-hl3104jd.tar.gz -C / && rm /mnt/nor/webs-binary-hl3104jd.tar && reboot

等待片刻,终端自动重启即可。
