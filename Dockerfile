# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install any needed dependencies
RUN npm install

# Copy the rest of the application to the container's working directory
COPY . .

# Expose port 4000 for the Node.js app
EXPOSE 4000

# Start the Node.js app
CMD ["npm", "start"]

