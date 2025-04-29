FROM nginx:1.28.0

RUN apt update && \
    apt install awscli -y
