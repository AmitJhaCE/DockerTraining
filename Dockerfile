# Starting base image which is node
FROM node

# Change to this directory inside the container
# Default is root - If /app doesnt exist it will be created
WORKDIR /app

# Prefer to write absolute path during copy
COPY . /app

RUN npm install

# Expose port 3000 same as express server
EXPOSE 80

# Always last instruction, passed to the container when image is deployed
CMD ["node", "server.js"]