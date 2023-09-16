FROM openjdk:17-jdk-slim as build

#Information around who maintains the image
MAINTAINER TWINKG

# Add the application's jar to the container
COPY target/eureka-0.0.1-SNAPSHOT.jar eureka-server.jar

#execute the application
ENTRYPOINT ["java","-jar","/eureka-server.jar"]