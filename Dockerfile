FROM ubuntu
RUN apt update -y 
RUN apt install curl -y 
RUN apt install python3 -y
COPY Site /mnt
EXPOSE 8080
CMD python3 -m http.server --directory /mnt
