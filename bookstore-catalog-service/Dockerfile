FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY target/bookstore-catalog-service-0.0.1-SNAPSHOT.jar bookstore-catalog-service.jar
COPY ./images /app/images
ENTRYPOINT ["java","-jar","/app/bookstore-catalog-service.jar"]