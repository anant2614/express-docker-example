
# express-docker-example

  

The Dockerfile follows the below steps to build the image:

  

### FROM ubuntu

Use ubuntu as the OS for the container.

  

### RUN apt-get update

Update the repositories.

  

### RUN apt-get install curl -y

Install the curl command.

  

### RUN apt-get install software-properties-common -y

Install some useful resources for adding/removing PPAs.

  

### RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -

Install the PPA.

  

### RUN apt-get install nodejs -y

Install nodejs.

  

### RUN node -v

Verifies node version.

  

### RUN npm -v

Verifies npm version.

  

### COPY express-docker-app /opt/express-docker-app

Copies the express app to opt directory of ubuntu.

  

### ENTRYPOINT node /opt/express-docker-app/app.js

Runs the node app.

  
  

## #Build the image:

docker build express-docker-example

  

## #Run the image and start the container with port mapping:

docker run -p 3001:3000 e63aa8460320