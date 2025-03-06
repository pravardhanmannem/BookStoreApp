FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY target/bookstore-api-gateway-service-0.0.1-SNAPSHOT.jar bookstore-api-gateway-service.jar
ENTRYPOINT ["java","-jar","/app/bookstore-api-gateway-service.jar"]