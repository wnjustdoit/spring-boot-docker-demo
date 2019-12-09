FROM openjdk:8-jdk-alpine
LABEL MAINTAINER="caiya@caiya.me"
VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRYPOINT exec java ${JAVA_OPTS} -Djava.security.egd=file:/dev/./urandom -jar /app.jar