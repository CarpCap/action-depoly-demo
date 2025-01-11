FROM openjdk:8-jre
MAINTAINER Liyu3432
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ADD target/app-1.0.0.jar /app.jar
EXPOSE 9014
ENTRYPOINT ["sh","-c","java  -jar $JAVA_OPTS  /app.jar"]
