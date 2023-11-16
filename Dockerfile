FROM openjdk:11-jre-slim

EXPOSE 8089

WORKDIR /app

RUN apt-get update && apt-get install -y curl


RUN curl -o tpAchatProject-1.2.jar -L "http://192.168.33.10:8081/repository/maven-releases/com/esprit/examen/achat/1.2/tpAchatProject-1.2.jar"

ENTRYPOINT ["java", "-jar", "achat-1.2.jar"]
