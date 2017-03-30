FROM debian:jessie

RUN apt-get -qyy update
RUN apt-get -qyy install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev curl git-core

RUN mkdir /ruby && \
  cd /ruby && \
  curl http://cache.ruby-lang.org/pub/ruby/2.4/ruby-2.4.1.tar.gz | tar xz && \
  cd ruby-2.4.1 && \
  ./configure && \
  make && \
  make install && \
  rm -rf /ruby

RUN echo 'gem: --no-ri --no-rdoc' > ~/.gemrc

