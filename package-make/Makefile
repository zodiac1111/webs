all::
	./mkpkg.sh
	echo -e "二进制包在 out 文件夹下."
binary:all

#用户名,密码ip等都是由顶级makefile导出的.
install:
	lftp -u $(user),$(passwd) $(ip) \
	-e "put ../out/$(file) $(upload_dir)  ;quit" 

install-ha:
	lftp -u $(user),$(passwd) $(ip) \
	-e "put ../out/webs-binary-hl3104ha.tar.gz;quit" 
	
install-jd:
	lftp -u $(user),$(passwd) $(ip) \
	-e "put ../out/webs-binary-hl3104jd.tar.gz;quit" 

#构造符号链接
link:
