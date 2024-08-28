
FROM cgr.dev/chainguard/wolfi-base:latest AS build

RUN apk update && apk add python3 curl py3-pip

RUN addgroup -S ansible && adduser -S ansible -G ansible
USER ansible
RUN python3 -m pip install --user ansible
  

ENV PATH="$PATH:/root/.local/bin"
RUN echo $PATH


