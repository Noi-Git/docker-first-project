# Specify a base image
FROM alpine

# Install some dependencies
RUN npm install

# Default commands
CMD ["npm", "start"]