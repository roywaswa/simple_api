# Dockerfile for a simple expressjs app where the start is 'npm start'

FROM node:10.15.3-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]

# Path: .dockerignore
# Ignore node_modules and npm-debug.log












