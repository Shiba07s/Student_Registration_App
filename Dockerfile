FROM openjdk:11-jre-slim
EXPOSE 9095
ADD target/ldtech-docker.jar ldtech-docker.jar
ENTRYPOINT [ "java","-jar","/ldtech-docker.jar" ]
