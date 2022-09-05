FROM openjdk:18-ea-jdk-slim
VOLUME /tmp
COPY src/main/resources/apiEncrytionKey.jks apiEncrytionKey.jks
COPY target/config-service-0.0.1-SNAPSHOT.jar ConfigServer.jar
ENTRYPOINT ["java","-jar","ConfigServer.jar"]