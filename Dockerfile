FROM alpine:3.10.0

ARG FARGATE_VERSION=0.3.1
ARG BASE_URL=https://github.com/jpignata/fargate/releases/download/v${FARGATE_VERSION}

RUN wget -O /tmp/fargate.zip ${BASE_URL}/fargate-${FARGATE_VERSION}-linux-amd64.zip \
  && unzip /tmp/fargate.zip -d /usr/local/bin \
  && rm -f /tmp/fargate.zip
