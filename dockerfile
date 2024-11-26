# Use an official Node.js runtime as a base image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json (if available) into the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files into the container
COPY . .

# Expose the port that the app will run on
EXPOSE 3000

# Define the command to run the app
CMD ["npm", "start"]
