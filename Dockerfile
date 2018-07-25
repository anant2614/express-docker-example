FROM ubuntu
RUN apt-get update
RUN apt-get install curl -y
RUN apt-get install software-properties-common -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install nodejs -y
RUN node -v
RUN npm -v
COPY express-docker-app /opt/express-docker-app
ENTRYPOINT node /opt/express-docker-app/app.js
