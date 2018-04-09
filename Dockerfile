FROM alpine:latest

RUN apk add --no-cache py-pip bash ca-certificates
RUN pip install --upgrade pip && pip install yamllint
ADD https://github.com/garethr/kubeval/releases/download/0.7.1/kubeval-linux-amd64.tar.gz /kubeval-linux-amd64.tar.gz
RUN tar -C /usr/local/bin -xf /kubeval-linux-amd64.tar.gz && rm /kubeval-linux-amd64.tar.gz
