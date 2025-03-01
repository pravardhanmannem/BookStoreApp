#!/bin/bash

# Define paths
APP_HOME="/home/ubuntu/BookStoreApp"
LOG_DIR="$APP_HOME/logs"

# Create logs directory if it doesn’t exist
mkdir -p "$LOG_DIR"

echo "Starting Backend Services..."

# Start services in the background and log output
nohup java -jar $APP_HOME/bookstore-account-service/target/bookstore-account-service-0.0.1-SNAPSHOT.jar > $LOG_DIR/bookstore-account-service.log 2>&1 &
echo "✅ bookstore-account-service started."

nohup java -jar $APP_HOME/bookstore-catalog-service/target/bookstore-catalog-service-0.0.1-SNAPSHOT.jar > $LOG_DIR/bookstore-catalog-service.log 2>&1 &
echo "✅ bookstore-catalog-service started."

nohup java -jar $APP_HOME/bookstore-billing-service/target/bookstore-billing-service-0.0.1-SNAPSHOT.jar > $LOG_DIR/bookstore-billing-service.log 2>&1 &
echo "✅ bookstore-billing-service started."

nohup java -jar $APP_HOME/bookstore-order-service/target/bookstore-order-service-0.0.1-SNAPSHOT.jar > $LOG_DIR/bookstore-order-service.log 2>&1 &
echo "✅ bookstore-order-service started."

nohup java -jar $APP_HOME/bookstore-payment-service/target/bookstore-payment-service-0.0.1-SNAPSHOT.jar > $LOG_DIR/bookstore-payment-service.log 2>&1 &
echo "✅ bookstore-payment-service started."

nohup java -jar $APP_HOME/bookstore-api-gateway-service/target/bookstore-api-gateway-service-0.0.1-SNAPSHOT.jar > $LOG_DIR/bookstore-api-gateway-service.log 2>&1 &
echo "✅ bookstore-api-gateway-service started."


echo "Starting Frontend..."

# Start the frontend (React App)
cd $APP_HOME/bookstore-frontend-react-app
nohup npm start > $LOG_DIR/frontend.log 2>&1 &

echo "✅ Frontend started."

echo "All services are running. Logs are stored in $LOG_DIR"
