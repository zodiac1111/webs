#!/bin/sh
#两个目录中文件都是符号链接,通过连接到不同配置文件打包不同版本的包.
#使用时需要将其中的符号链接指向对应的文件(目录).
tar --exclude=".*" \
	--exclude="trace.txt" \
	--exclude="*.md" \
	--exclude="log.txt" \
	--exclude="version-template.js" \
	--exclude="docs/*" \
	--exclude="matrixssl/*" \
	--exclude="over/*" \
	--exclude="asptest.asp" \
	-phcvf webs-binary-hl3104jd.tar -C webs-binary-hl3104jd mnt


tar --exclude=".*" \
	--exclude="trace.txt" \
	--exclude="*.md" \
	--exclude="log.txt" \
	--exclude="version-template.js" \
	--exclude="docs/*" \
	--exclude="matrixssl/*" \
	--exclude="over/*" \
	--exclude="asptest.asp" \
	-phcvf webs-binary-hl3104ha.tar -C webs-binary-hl3104ha mnt
