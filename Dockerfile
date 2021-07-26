FROM ubuntu
RUN apt update -y 
RUN apt install curl -y 
RUN apt -y install nodejs
COPY . ~
RUN apt -y install npm
RUN npm install http-server -g
EXPOSE 8080
CMD [ "http-server index.html" ]
