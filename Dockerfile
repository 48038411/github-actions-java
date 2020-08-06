FROM registry.cn-hangzhou.aliyuncs.com/library-bd/openjdk:8-jdk-alpine
LABEL maintainer="guoruichang@njbandou.com"

WORKDIR /app
COPY github-actions-java/target/demo-0.0.1-SNAPSHOT.jar ./app.jar

ENV TZ Asia/Shanghai
ENV JAVA_OPS -Duser.timezone=Asia/Shanghai

EXPOSE 8082
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","./app.jar"]
