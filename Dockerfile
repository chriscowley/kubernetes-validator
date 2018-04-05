FROM alpine:latest

ADD https://github.com/garethr/kubeval/releases/download/0.7.1/kubeval-linux-amd64.tar.gz /kubeval-linux-amd64.tar.gz
RUN tar -C /usr/local/bin -xf /kubeval-linux-amd64.tar.gz
RUN apk add --no-cache py-pip bash && pip install yamllint



