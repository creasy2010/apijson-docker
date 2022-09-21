FROM openjdk:8-jdk-alpine
# 时区设置
#RUN mkdir -p /usr/share/zoneinfo/Asia/
#RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
#    echo 'Asia/Shanghai' >/etc/timezone
#RUN dpkg-reconfigure -f noninteractive tzdata
# 时区设置
ENV NODE_ENV = production DOCKER_FLAG = true TZ="Asia/Shanghai"
# RUN apt-get update  -y && apt-get install -y vim
WORKDIR /usr/src/app
COPY ./target/apijson-boot-5.2.0.jar app.jar
EXPOSE 8080
CMD [ "java","-jar","./app.jar"]