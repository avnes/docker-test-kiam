FROM nginx

RUN apt update && \
    apt install awscli -y
