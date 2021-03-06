ARG BASE_IMAGE

FROM $BASE_IMAGE

MAINTAINER Danielle Adams (adamzdanielle@gmail.com)

ENV SHPEC_VERSION 0.3.1

RUN apt-get -qq update
RUN apt-get -qq install -y curl git make

RUN curl -sL https://github.com/rylnd/shpec/archive/$SHPEC_VERSION.tar.gz | gunzip | tar xf -
RUN cd shpec-$SHPEC_VERSION && install bin/shpec /usr/local/bin
RUN rm -rf shpec-$SHPEC_VERSION

RUN mkdir -p /project

CMD /bin/bash -c "cd /project && shpec"
