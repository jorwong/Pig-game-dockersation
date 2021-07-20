FROM ubuntu:18.04
COPY . ~
RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
RUN sudo apt -y install nodejs
RUN sudo npm install http-server -g
CMD [ "http-server index.html" ]
