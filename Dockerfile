# Use a lightweight Node.js image as base
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files to the working directory
COPY . .

# Expose port 8080 to allow external access to the application
EXPOSE 8080

# Command to start the application
CMD ["node", "index.js"]
