# Starting base image which is node
FROM node

# Change to this directory inside the container
# Default is root - If /app doesnt exist it will be created
WORKDIR /app

# Copy package.json and run npm install before copying other files
# This will help with faster container builds when source code is altered
# Unless package.json is changed, cache will be used till next COPY command
COPY package.json /app

RUN npm install

# Prefer to write absolute path during copy
COPY . /app

# Expose port 3000 same as express server
EXPOSE 80

# Always last instruction, passed to the container when image is deployed
CMD ["node", "server.js"]