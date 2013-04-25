#顶级Makefile文件主要用于安装
# 第一目标:生成二进制包,用的最多
all:binary
default:binary
binary:
	make -C package-make/ binary

# 次要目标:手动通过ftp上传,在初次使用时很有用
#通过lftp上传,需要linux环境下,推荐使用web页面上传,
#只有第一次上传/webs挂起的情况下才使用ftp上传
# 可以手动指定ip,例如:
#   make install ip=192.168.1.122
export user=anonymous
export passwd=holley
export ip=192.168.1.189
export file=webs-binary-hl3104ha.tar.gz
install:
	make -C package-make/ install
install-ha:
	make -C package-make/ install-ha
install-jd:
	make -C package-make/ install-jd
#对于1.5版本,ftp主目录不可写,需要指定ftp上传路径
install-old:
	make -C package-make/ install upload_dir="-o /mnt/nor"

# 编译 2.3版本,1.5需要指定编译器和编译环境
compile:
	make -C goahead/LINUX/ all

#用户开发的包,暂时放在../目录
#简单的源代码包, 用于开发
tar:
	tar pczvf ../webs-1.2-src.tar.gz *
clean:
	make -C goahead/ clean
	rm -f out/*
version:
	make -C goahead/ version
	make -C www/ version

#一键生成包+可选的上传包,开发代码时用的做多
onekeymake:version compile binary
