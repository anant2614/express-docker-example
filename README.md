# express-docker-example

The Dockerfile follows the below steps to build the image:

1.FROM ubuntu
  Use ubuntu as the OS for the container.

2.RUN apt-get update
  Update the repositories.

3.RUN apt-get install curl -y
  Install the curl command.

4.RUN apt-get install software-properties-common -y
  Install some useful resources for adding/removing PPAs.

5.RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
  Install the PPA.

6.RUN apt-get install nodejs -y
  Install nodejs.

7.RUN node -v
  Verifies node version.

8.RUN npm -v
  Verifies npm version.

9.COPY express-docker-app /opt/express-docker-app
  Copies the express app to opt directory of ubuntu.

10.ENTRYPOINT node /opt/express-docker-app/app.js
   Runs the node app.


# Build the image:
docker build express-docker-example

# Run the image and start the container with port mapping:
docker run -p 3001:3000 e63aa8460320
