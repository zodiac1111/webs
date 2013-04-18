webs项目
* goahead 服务器端代码,c语言编写
* www 客户端代码,html css js
* package-make 生成二进制包,用于web在线升级或者使用ftp上传升级
* out 输出目录

gohead主目录:/home/zodiac1111/workspace/goahead
www: /home/zodiac1111/Aptana Studio 3 Workspace/www
package-make: /home/zodiac1111/workspace/package-make

使用游览器打开 goahead/LINUX/html/index.html 文件以阅读安装和使用说明

文件结构(tree):
.
|-- goahead -> /home/zodiac1111/workspace/goahead
|-- out
|-- package-make
|-- README.txt
`-- www -> /home/zodiac1111/Aptana\ Studio\ 3\ Workspace/www

**注意**
goahead 和 www 都是符号链接到真正的目录.
    Makefile中两个变量用于方便的建立符号链接,参见Makefile
如果他们是真正的目录,则不用改变了.
