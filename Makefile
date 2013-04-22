all:binary
default:binary

#自动建立文件目录结构,需要2个参数:
#goahead_root_dir 服务器项目根目录
#www_root_dir 客户端项目根目录
# 请务必按照实际情况 修改这2个参数指向的目录,最好是绝对路径
export goahead_root_dir="/home/zodiac1111/workspace/goahead"
export www_root_dir="/home/zodiac1111/Aptana Studio 3 Workspace/www"
struct:
	([ -L goahead ] || [ ! -f goahead ]) \
		&& rm -f goahead \
		&& ln -s $(goahead_root_dir) goahead
	([ -L www ] ||  [ ! -f www ]) \
		&& rm -f www && \
		ln -s $(www_root_dir) www

#用于升级/安装的二进制包
binary:
	make -C package-make/ binary
#简单的打包, 用于开发
tar:
	tar phczvf ../webs-1.2-src.tar *
clean:
	rm -f out/*
