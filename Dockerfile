# use the official node image
FROM node:24-alpine

# create a app directory within the container to copy our source code to 
WORKDIR /app 

#copy all the dependencies of our source code to the container
COPY package*.json ./

# install the dependencies in the container
RUN npm install

# copy the app source code into the container working directory
COPY . . 

#expose the port to the container
EXPOSE 3000

#start the app 
CMD [ "npm" , "start" ]


