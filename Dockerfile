FROM ubuntu:latest

MAINTAINER Bernabé García <bgarcia@netlabs.com.uy>

RUN apt-get install -y curl

RUN curl -L https://raw.githubusercontent.com/dklight/dotfiles/master/install.sh | /bin/bash

CMD /bin/zsh
