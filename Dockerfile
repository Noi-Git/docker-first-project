# Specify a base image
FROM node:14-alpine

# Install some dependencies
COPY ./ ./
RUN npm install

# Default commands
CMD ["npm", "start"]

# run build and create tag
# 1. docker build -t noi/first-docker .
# 2.docker run noi/first-docker <-- this step is to create the container