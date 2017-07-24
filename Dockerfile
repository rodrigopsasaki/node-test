FROM node:8.2-alpine

# Create directories
RUN mkdir -p /usr/src/app

# Install the app
WORKDIR /usr/src/app
COPY ./package.json /usr/src/app
RUN npm install
COPY . /usr/src/app

# Tell docker how to run the app
EXPOSE 3000
CMD [ "npm", "start" ]