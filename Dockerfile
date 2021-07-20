FROM ubuntu
RUN apt update -y
RUN apt install curl -y
RUN apt -y install nodejs
COPY . ~
RUN apt -y install npm
RUN npm install http-server -g
CMD [ "http-server index.html" ]
