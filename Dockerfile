FROM ubuntu
RUN apt update -y
RUN apt install curl -y
RUN apt -y install nodejs
COPY . ~
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN npm install http-server -g
CMD [ "http-server index.html" ]
