#指定node镜像的版本
FROM node:8.9-alpine
#声明作者
MAINTAINER gaobiao
#移动当前目录下面的文件到app目录下--> 使用VOLUME而不是拷贝。
#MKDIR /www
ADD . /www/
#进入到app目录下面，类似cd
WORKDIR /www
#安装依赖
RUN npm install
#对外暴露的端口
EXPOSE 2999
#程序启动脚本
CMD ["npm", "start"]