FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY target/bookstore-account-service-0.0.1-SNAPSHOT.jar bookstore-account-service.jar
ENTRYPOINT ["java","-jar","/app/bookstore-account-service.jar"]