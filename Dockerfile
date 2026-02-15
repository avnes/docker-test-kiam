FROM nginx:1.29.5

RUN apt update && \
    apt install awscli -y
