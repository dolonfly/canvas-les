FROM node:slim

# Declaring env
ENV NODE_ENV development
ENV PORT 80

# Setting up the work directory
WORKDIR /usr/app

# Copying all the files in our project
COPY . .

# Installing dependencies
RUN npm install

# Exposing server port
EXPOSE $PORT

# Starting our application
CMD [ "node", "./bin/www" ]
