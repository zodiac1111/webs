#!/bin/sh
#两个目录中文件都是符号链接,通过连接到不同配置文件打包不同版本的包.
#使用时需要将其中的符号链接指向对应的文件(目录).

#webs-binary-hl3104jd 文件夹是一个完整的终端的文件结构
#使用  tree webs-binary-hl3104jd 命令查看文件结构,如下:
#webs-binary-hl3104jd/
#`-- mnt
#    `-- nor
#        |-- bin
#        |   |-- webs -> /home/zodiac1111/workspace/goahead/LINUX/webs
#        |   `-- webs.update -> /home/zodiac1111/workspace/goahead/LINUX/webs.update
#        |-- conf
#        |   |-- goahead.conf -> /home/zodiac1111/workspace/goahead/conf/goahead.conf
#        |   `-- monparam_name.conf -> /home/zodiac1111/workspace/goahead/conf/monparam_name_JD.conf
#        `-- www -> /home/zodiac1111/Aptana\ Studio\ 3\ Workspace/www
#
#  **注意** 文件和目录都是通过符号链接指向实际的文件和目录,这样tar可以
# 追随符号链接只真正的文件和目录,并且把他打包进来.

tar --exclude=".*" \
	--exclude="trace.txt" \
	--exclude="*.md" \
	--exclude="log.txt" \
	--exclude="version-template.js" \
	--exclude="docs*" \
	--exclude="matrixssl*" \
	--exclude="over*" \
	--exclude="asptest.asp" \
	--exclude="makeversion.sh" \
	-phzcvf ../out/webs-binary-hl3104jd.tar.gz -C webs-binary-hl3104jd mnt


tar --exclude=".*" \
	--exclude="trace.txt" \
	--exclude="*.md" \
	--exclude="log.txt" \
	--exclude="version-template.js" \
	--exclude="docs*" \
	--exclude="matrixssl*" \
	--exclude="over*" \
	--exclude="asptest.asp" \
	--exclude="makeversion.sh" \
	-phzcvf ../out/webs-binary-hl3104ha.tar.gz -C webs-binary-hl3104ha mnt

tar --exclude=".*" \
	--exclude="trace.txt" \
	--exclude="*.md" \
	--exclude="log.txt" \
	--exclude="version-template.js" \
	--exclude="docs*" \
	--exclude="matrixssl*" \
	--exclude="over*" \
	--exclude="asptest.asp" \
	--exclude="makeversion.sh" \
	-phzcvf ../out/webs-binary-hl3104ja.tar.gz -C webs-binary-hl3104ja mnt
#自动传输
#lftp -u anonymous,holley 192.168.1.151\
#	-e "put webs-binary-hl3104ha.tar.gz -o nor/ ;quit" 
