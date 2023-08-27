FROM openjdk:17 
EXPOSE 9093
ADD target/registration-docker.jar registration-docker.jar
ENTRYPOINT [ "java","-jar","/registration-docker.jar" ]
# Build Stage
# FROM openjdk:17  
# WORKDIR /app
# COPY . /app
# RUN ./registration-docker.jar

#  Runtime Stage
# FROM openjdk:17-jre-slim
# WORKDIR /app
# COPY --from=build /app/target/registration-docker.jar registration-docker.jar
# EXPOSE 9093
# CMD ["java", "-jar", "/registration-docker.jar"]
