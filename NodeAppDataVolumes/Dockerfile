# Get latest version of node app
FROM node

# Create and change into app directory in container storage
WORKDIR /app

# Copy and install required packages as per package.json file
COPY package.json /app

RUN npm install

# Copy the application code
COPY . /app

#Expose port 80 same as server
EXPOSE 80

#Start server
CMD ['node' 'server.js']
