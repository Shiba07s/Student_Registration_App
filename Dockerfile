FROM openjdk:17-jre-slim
EXPOSE 9093
ADD target/registration-docker.jar registration-docker.jar
ENTRYPOINT [ "java","-jar","/registration-docker.jar" ]
