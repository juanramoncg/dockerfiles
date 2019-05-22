FROM juanramoncg/buster-ruby-postgres:ruby2.6.2-postgres9.6.11

ARG NODE_VERSION=10.15.3

RUN apt-get -qy update && \
  apt-get -qy install python && \
  mkdir /node && \
  cd /node && \
  curl http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.gz | tar xz && \
  cd node-v$NODE_VERSION && \
  ./configure && \
  make && \
  make install && \
  cd / && \
  rm -rf /node && \
  apt-get -qy remove python && \
  apt-get -qy autoremove


RUN echo 'gem: --no-ri --no-rdoc' > ~/.gemrc
