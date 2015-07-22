FROM ubuntu:latest

MAINTAINER Bernabé García <bgarcia@netlabs.com.uy>

ENTRYPOINT apt-get install -y curl && curl -L https://raw.githubusercontent.com/dklight/dotfiles/master/install.sh | /bin/bash
