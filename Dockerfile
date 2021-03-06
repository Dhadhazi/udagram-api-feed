# Use NodeJS base image
FROM node:13

# Create app directory
WORKDIR /usr/src/app

# package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the build output folder over
ADD ./www /usr/src/app

# Bind the port that the image will run on
EXPOSE 8080

# Define the Docker image's behavior at runtime
CMD ["node", "server.js"]