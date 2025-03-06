FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY target/bookstore-payment-service-0.0.1-SNAPSHOT.jar bookstore-payment-service.jar
ENTRYPOINT ["java","-jar","/app/bookstore-payment-service.jar"]