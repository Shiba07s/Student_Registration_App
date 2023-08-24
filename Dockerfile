FROM openjdk:11-jre-slim
EXPOSE 9095
ADD target/registration-docker.jar registration-docker.jar
ENTRYPOINT [ "java","-jar","/registration-docker.jar" ]
