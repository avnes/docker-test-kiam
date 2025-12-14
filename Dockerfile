FROM nginx:1.29.4

RUN apt update && \
    apt install awscli -y
