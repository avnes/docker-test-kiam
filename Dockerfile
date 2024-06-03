FROM nginx:1.26.1

RUN apt update && \
    apt install awscli -y
