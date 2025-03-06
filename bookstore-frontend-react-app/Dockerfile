# Use Node.js v10.24.1 as the base image
FROM node:10.24.1

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first to leverage Docker caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all required files and folders from the root directory to the container
COPY . .

# Start the application
CMD ["npm", "start"]