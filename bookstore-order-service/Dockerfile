FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY target/bookstore-order-service-0.0.1-SNAPSHOT.jar bookstore-order-service.jar
ENTRYPOINT ["java","-jar","/app/bookstore-order-service.jar"]