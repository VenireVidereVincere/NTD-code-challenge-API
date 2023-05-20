# Use an official Node.js runtime as the base image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install build dependencies
RUN apk add --no-cache make gcc g++ python3 && \
  npm install

# Copy the rest of the application code to the working directory
COPY . .

# Install bcrypt and rebuild if necessary
RUN npm install bcrypt --build-from-source

# Remove build dependencies
RUN apk del make gcc g++ python3

# Expose the port that the API listens on
EXPOSE 3000

# Define the command to run when the container starts
CMD [ "npm", "start" ]