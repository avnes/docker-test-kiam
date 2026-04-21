FROM nginx:1.28.1

RUN apt update && \
    apt install awscli -y
