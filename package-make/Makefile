all::
	./mkpkg.sh
	echo -e "二进制包在 out 文件夹下."
binary:all

#通过lftp上传,需要linux环境下,推荐使用web页面上传,无效的情况下才使用ftp上传
user=anonymous
passwd=holley
ip=192.168.1.151
file=webs-binary-hl3104ha.tar.gz
install:
	lftp -u $(user),$(passwd) $(ip) \
	-e "put ../out/$(file)  ;quit" 

install-ha:
	lftp -u $(user),$(passwd) $(ip) \
	-e "put ../out/webs-binary-hl3104ha.tar.gz;quit" 
	
install-jd:
	lftp -u $(user),$(passwd) $(ip) \
	-e "put ../out/webs-binary-hl3104jd.tar.gz;quit" 

#构造符号链接
link:
