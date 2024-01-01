# Use an official Node runtime as a parent image
FROM node:14-slim

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install any needed packages specified in package.json
RUN npm install

# Copy the current directory contents into the container at /app
COPY . .

# Make port 3003 available to the world outside this container
EXPOSE 3003

# Run server.js when the container launches
CMD ["node", "app.js"]
