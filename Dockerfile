FROM nginx:1.27.5

RUN apt update && \
    apt install awscli -y
