# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the rest of the app's source code to the container
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Command to start your app
CMD ["npm", "start"]
