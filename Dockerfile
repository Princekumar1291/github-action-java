# Stage 1: Build
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app

COPY pom.xml .
RUN mvn dependency:go-offline -B


COPY src ./src

RUN mvn clean
RUN mvn package




# Stage 2: Run
FROM eclipse-temurin:17-jre
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar

HEALTHCHECK \
  --interval=30s \
  --timeout=10s \
  --start-period=10s \
  --retries=3 \
  CMD curl --fail http://localhost:8080/actuator/health || exit 1


EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"] 

