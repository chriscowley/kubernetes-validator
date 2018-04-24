FROM debian:latest
RUN apt update && apt -y install yamllint
ADD https://github.com/garethr/kubeval/releases/download/0.7.1/kubeval-linux-amd64.tar.gz /kubeval-linux-amd64.tar.gz
RUN tar -C /usr/local/bin -xf /kubeval-linux-amd64.tar.gz && rm /kubeval-linux-amd64.tar.gz
COPY --from=kubetestbuilder /go/src/github.com/garethr/kubetest/bin/linux/amd64/kubetest /usr/local/bin/kubetest
