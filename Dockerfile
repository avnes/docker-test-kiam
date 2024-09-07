FROM nginx:1.26.2

RUN apt update && \
    apt install awscli -y
