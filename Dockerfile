FROM openjdk:9-jdk
VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} docker-demo-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/docker-demo-0.0.1-SNAPSHOT.jar"]