# Use the official Node.js 18 image as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . ./

# Expose the port that the app runs on
EXPOSE 5001

# Define environment variable to prevent logging colorized output
ENV FORCE_COLOR=0

# Start the application
CMD ["node", "server.js"]