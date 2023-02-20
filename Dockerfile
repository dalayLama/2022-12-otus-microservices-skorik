FROM bellsoft/liberica-openjdk-debian:17

WORKDIR app

COPY hw01-docker/build/libs/hw01-docker-1.0.jar hw01-docker-1.0.jar

CMD ["java", "-jar", "hw01-docker-1.0.jar"]