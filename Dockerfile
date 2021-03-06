FROM ubuntu:16.04

# Install ruby & ruby-dev
RUN apt-get update && apt-get install -y \
    curl \
    ruby-dev \
    make \
    dh-autoreconf \
    nasm \
    git \
    apt-utils
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get update && apt-get install -y \
    nodejs \
    build-essential
    


# Install sass and compass gems

RUN gem install sass --no-ri --no-rdoc
RUN gem install compass --no-ri --no-rdoc