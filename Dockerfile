FROM renra/ruby-build-essential-postgres-git:2.1.7

RUN apt-get -qq -y update

RUN apt-get install -qq -y flex bison gperf \
  libsqlite3-dev libfontconfig1-dev libicu-dev libfreetype6 libssl-dev \
  libpng-dev libjpeg-dev libx11-dev libxext-dev

# We have to compile ourselves but we also want to prevent the image to get too huge
# To do it, first uncomment the following lines which will produce an executable phantomjs binary

#RUN apt-get install -y g++ perl python
#RUN git clone git://github.com/ariya/phantomjs.git /phantomjs
#
#WORKDIR /phantomjs
#
#RUN git checkout 2.1.1
#RUN git submodule init
#RUN git submodule update
#
#RUN python build.py
#

#WORKDIR /
#RUN cp /phantomjs/bin/phantomjs /usr/local/bin
#RUN rm -rf /phantomjs
#
#RUN apt-get remove -qq -y g++ perl python
#RUN apt-get -qq -y autoremove
#

# Now you should have the binary in /usr/local/bin Copy it out of your container to the host
# docker run -t your_helper_image /bin/bash
# docker cp your_running_container_id:/usr/local/bin/phantomjs docker_phantomjs

# Next comment the previous section out again and uncomment the following line.
#COPY docker_phantomjs /usr/local/bin/phantomjs

# Ta-daa. Your new image does not contain the intermediary step in its history and thus is much smaller
