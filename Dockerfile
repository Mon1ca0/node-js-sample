# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose a port (replace 3000 with your application's port)
EXPOSE 5000

# Define the command to run your application
# CMD ["node", "index.js"]
CMD [ "npm","run","start" ]
