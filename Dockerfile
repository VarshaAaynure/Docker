# dockerfile is a blueprint to create docker images

# syntax 

# start by basing it on another image
FROM node 

# set env variable
ENV MONGO_DB_USERNAME=admin \ 
    MONGO_DB_PWD=password

# create this folder
RUN mkdir -p /home/app

# copy current folder files to /home/app
COPY . /home/app

# start the app with: node server.js
CMD["node", "server.js"]
