FROM bellsoft/liberica-openjdk-debian:17

WORKDIR app

COPY gradle gradle
COPY gradlew gradlew
COPY settings.gradle settings.gradle
COPY build.gradle build.gradle

COPY hw01-docker/build.gradle hw01-docker/build.gradle
RUN  ./gradlew --refresh-dependencies

COPY hw01-docker/src hw01-docker/src

CMD ["./gradlew", "hw01-docker:bootRun"]