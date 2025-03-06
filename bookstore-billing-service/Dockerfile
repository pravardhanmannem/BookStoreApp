FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY target/bookstore-billing-service-0.0.1-SNAPSHOT.jar bookstore-billing-service.jar
ENTRYPOINT ["java","-jar","/app/bookstore-billing-service.jar"]