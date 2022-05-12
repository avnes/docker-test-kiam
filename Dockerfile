FROM nginx:1.21

RUN apt update && \
    apt install awscli -y
