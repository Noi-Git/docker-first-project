# Specify a base image
FROM node:14-alpine

WORKDIR /usr/app

# Install some dependencies -- add COPY ./package.json ./ 
# <-- to prevent un-neccessary rebuilt package.json everytime
# <-- this step will rebuilt only when we make change to package.json and steps above
COPY ./package.json ./ 
RUN npm install
COPY ./ ./

# Default commands
CMD ["npm", "start"]

# run build and create tag
# 1. docker build -t noi/first-docker .
# 2.docker run noi/first-docker <-- this step is to create the container
# Note: you will get error message "This site can't be reached" *--* need to use the mapping step below

# setup docker run with mapping
# docker run -p 8080:8080 noi/first-docker *--* no .