FROM nginx:1.29.3

RUN apt update && \
    apt install awscli -y
