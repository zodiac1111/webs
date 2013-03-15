#!/bin sh
#两个目录中文件都是符号链接,通过连接到不同配置文件打包不同版本的包.
#使用时需要将其中的符号链接指向对应的文件(目录).
tar --exclude=".*"  -phcvf webs-binary-hl3104jd.tar webs-binary-hl3104jd
tar --exclude=".*"  -phcvf webs-binary-hl3104ha.tar webs-binary-hl3104ha
